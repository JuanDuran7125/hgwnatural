#!/bin/bash
# Create 3 city pages by cloning and modifying the Cali template
cd /c/Users/USER/projects/hgw/pages/ciudad

copy_modify() {
    local city="$1"
    local title="$2"
    local desc="$3"
    local keywords="$4"
    local region="$5"
    local placename="$6"
    local pos="$7"
    local icbm="$8"
    local dept="$9"
    local src="productos-cali.html"
    local dst="productos-${city}.html"
    
    cp "$src" "$dst"
    
    # Meta title
    sed -i "s|<title>Productos HGW en Cali — Jabón Turmalina, Toallas y Protectores</title>|<title>${title}</title>|g" "$dst"
    # Meta description
    sed -i "s|Compra productos HGW con turmalina en Cali. Jabón de Turmalina (\$18K), Toallas Higiénicas (\$21K) y Protectores Diarios (\$21K). Envíos a toda la ciudad de Cali. ¡Pide por WhatsApp!|${desc}|g" "$dst"
    # Keywords
    sed -i "s|HGW Cali, jabón turmalina Cali, toallas higiénicas turmalina, protectores diarios, productos naturales Cali, Health Green World Colombia, HGW productos Cali|${keywords}|g" "$dst"
    # Geo region
    sed -i "s|CO-VAC|${region}|g" "$dst"
    # Place name
    sed -i "s|content=\"Cali\"\([^;]\)|content=\"${placename}\"\1|g" "$dst"
    # Geo position
    sed -i "s|3.4516;-76.532|${pos}|g" "$dst"
    # ICBM
    sed -i "s|3.4516, -76.532|${icbm}|g" "$dst"
    # Canonical URL
    sed -i "s|/pages/ciudad/productos-cali|/pages/ciudad/productos-${city}|g" "$dst"
    # City names in visible text  
    sed -i "s/en Cali/en ${placename}/g" "$dst"
    sed -i "s/de Cali/de ${placename}/g" "$dst"
    sed -i "s/a Cali/a ${placename}/g" "$dst"
    sed -i "s/Cali!/${placename}!/g" "$dst"
    sed -i "s/área de Cali/área de ${placename}/g" "$dst"
    sed -i "s/Cali\b/${placename}/g" "$dst"
    # Department  
    sed -i "s|Valle del Cauca|${dept}|g" "$dst"
    
    echo "Created: $dst"
}

copy_modify "cartagena" \
  "Productos HGW en Cartagena — Cremas Dentales y Dulces de Arándano | Envíos" \
  "Compra productos HGW con turmalina en Cartagena. Jabón de Turmalina (\$18K), Toallas Higiénicas (\$21K) y Protectores Diarios (\$21K). Envíos a toda Cartagena. ¡Pide por WhatsApp!" \
  "HGW Cartagena, jabón turmalina Cartagena, toallas higiénicas turmalina, protectores diarios, productos naturales Cartagena" \
  "CO-BOL" "Cartagena" "10.391;-75.5144" "10.391, -75.5144" "Bolívar"

copy_modify "pereira" \
  "Productos HGW en Pereira — Jabón Turmalina, Toallas y Cremas Dentales | Envíos" \
  "Compra productos HGW con turmalina en Pereira. Jabón de Turmalina (\$18K), Toallas Higiénicas (\$21K) y Protectores Diarios (\$21K). Envíos a toda Pereira. ¡Pide por WhatsApp!" \
  "HGW Pereira, jabón turmalina Pereira, toallas higiénicas turmalina, protectores diarios, productos naturales Pereira" \
  "CO-RIS" "Pereira" "4.8133;-75.6961" "4.8133, -75.6961" "Risaralda"

copy_modify "cucuta" \
  "Productos HGW en Cúcuta — Protectores, Dulces y Jabón Turmalina | Envíos" \
  "Compra productos HGW con turmalina en Cúcuta. Jabón de Turmalina (\$18K), Toallas Higiénicas (\$21K) y Protectores Diarios (\$21K). Envíos a toda Cúcuta. ¡Pide por WhatsApp!" \
  "HGW Cúcuta, jabón turmalina Cúcuta, toallas higiénicas turmalina, protectores diarios, productos naturales Cúcuta" \
  "CO-NSA" "Cúcuta" "7.8939;-72.5078" "7.8939, -72.5078" "Norte de Santander"