#!/bin/bash
echo "entre com seu nome:"
read nome

saudacao () # Declaração da função saudacao().
{
    echo "Boa noite $1!"
    echo "Obrigado $2"
}

saudacao "usuário" $nome