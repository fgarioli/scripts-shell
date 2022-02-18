#!/bin/bash
echo "------ Escolha uma Opção ------"
echo "1-Mostra os processos em execução na tela"
echo "2-Mostra o PID de um processo"
echo "3-Para um processo"
echo "4-Continua um processo parado"
echo "5-Mata um processo"
echo "6-Muda a prioridade de um processo"
echo "0-Sair"

read opcao
case $opcao in
    1 ) ps aux;;
    2 ) echo "Digite o nome do processo: "
        read nome
        pidof $nome ;;
    3 ) echo "Digite o PID do processo: "
        read pid 
        kill -STOP $pid ;;
    4 ) echo "Digite o PID do processo: "
        read pid 
        kill -CONT $pid ;;
    5 ) echo "Digite o PID do processo: "
        read pid 
        kill -9 $pid ;;
    6 ) echo "Digite o PID do processo: "
        read pid 
        echo "Digite a prioridade do processo: "
        read prioridade 
        renice $prioridade $pid ;;
esac
