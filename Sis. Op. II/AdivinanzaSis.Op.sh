
#!/usr/bin/env bash
clear
numero=$(( (RANDOM % 15) + 1 ))

echo "¡Bienvenido! ¿Cómo te llamas?"
read nombre
echo "¡Hola, $nombre!. Tienes que adivinar un número del 1-15. (Solo tienes 5 oportunidades)"

intentos=0

while [ $intentos -lt 5 ]
do
  echo "Introduce un número:"
  read adivinanza

  intentos=$((intentos+1))

  if [ $adivinanza -eq $numero ]
  then
    echo "¡Wao! Adivinaste que el número era $numero en $intentos intentos."
    exit 0
  fi

  if [ $adivinanza -lt $numero ]
  then
    echo "El número es mayor que $adivinanza."
  else
    echo "El número es menor que $adivinanza."
  fi
done

echo "Lo siento, has agotado tus oportunidades. El número correcto era $numero."
exit 0
