/* HGW Natural — Analytics (GA4) con consentimiento previo */
(function () {
  'use strict';
  var cfg = window.HGW_ANALYTICS || {};
  var GA_ID = (cfg.ga4 || '').trim();
  var GTM_ID = (cfg.gtm || '').trim();
  var consented = false;
  try { consented = localStorage.getItem('hgw_cookie_consent') === 'accepted'; } catch (e) {}

  function track(name, params) {
    if (typeof window.gtag === 'function') window.gtag('event', name, params || {});
    try { window.dispatchEvent(new CustomEvent('hgw:' + name, { detail: params || {} })); } catch (e) {}
  }
  window.hgwTrack = track;

  window.hgwLoadAnalytics = function () {
    if (window.__hgwLoaded) return; window.__hgwLoaded = true;
    if (/^G-[A-Z0-9]{6,}$/.test(GA_ID)) {
      var s = document.createElement('script'); s.async = true;
      s.src = 'https://www.googletagmanager.com/gtag/js?id=' + GA_ID;
      document.head.appendChild(s);
      window.dataLayer = window.dataLayer || [];
      window.gtag = function () { window.dataLayer.push(arguments); };
      window.gtag('js', new Date());
      window.gtag('config', GA_ID, { anonymize_ip: true });
    }
    if (/^GTM-[A-Z0-9]+$/.test(GTM_ID)) {
      window.dataLayer = window.dataLayer || [];
      window.dataLayer.push({ 'gtm.start': new Date().getTime(), event: 'gtm.js' });
      var g = document.createElement('script'); g.async = true;
      g.src = 'https://www.googletagmanager.com/gtm.js?id=' + GTM_ID;
      document.head.appendChild(g);
    }
  };

  if (consented) window.hgwLoadAnalytics();

  var path = location.pathname.toLowerCase();
  var isProduct = /jabon-turmalina|toallas-higienicas|protectores-diarios|crema-dental|dulces-de-arandano/.test(path) && path.indexOf('productos-hgw') === -1;
  var isDistributor = /oportunidad|distribuidor/.test(path);

  document.addEventListener('click', function (e) {
    var a = e.target.closest ? e.target.closest('a') : null;
    if (!a) return;
    var href = a.getAttribute('href') || '';
    var text = (a.textContent || '').toLowerCase();
    if (href.indexOf('wa.me') > -1 || href.indexOf('whatsapp') > -1)
      track('click_whatsapp', { link_url: href, page_path: location.pathname, page_type: isProduct ? 'product' : (isDistributor ? 'distributor' : 'content') });
    if (isProduct && /comprar|pedir|ordenar|whatsapp|precio/.test(text)) track('click_buy', { page_path: location.pathname });
    if (isDistributor && /distribuidor|unirme|unete|inscrib|empezar/.test(text + ' ' + href)) track('click_distributor', { page_path: location.pathname });
    if (a.dataset && a.dataset.country) track('country_selected', { country: a.dataset.country });
    if (/^https?:\/\//.test(href) && href.indexOf(location.hostname) === -1 && href.indexOf('wa.me') === -1) track('outbound_click', { link_url: href });
  }, true);

  document.addEventListener('submit', function (e) {
    var f = e.target; if (f && f.tagName === 'FORM') track('form_submit', { form_id: f.id || 'unnamed' });
  }, true);
  document.addEventListener('focusin', function (e) {
    var t = e.target;
    if (t && (t.tagName === 'INPUT' || t.tagName === 'TEXTAREA') && !t.__hgw_start) { t.__hgw_start = true; track('form_start', { field: t.name || t.id || 'unnamed' }); }
  }, true);
})();
