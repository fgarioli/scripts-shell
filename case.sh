#!/bin/bash
echo "Qual sua resposta?"
read opcao
case $opcao in
    sim ) echo "Você concordou!" ;;
    nao ) echo "Que pena!" ;;
    "talvez" ) echo "Talvez" ;;
    * ) echo "Nem sim, nem não";;
esac
