archivo_suma="suma.txt" 
  
contenido1=($(cat nueva_carpeta/archivo1.txt)) 
contenido2=($(cat nueva_carpeta/archivo2.txt)) 
  
suma=$((contenido1 + contenido2)) 
echo "$suma" > "$archivo_suma"
