#!/bin/bash

# Função para adição
addition() {
  result=$(echo "$1 + $2" | bc)
  echo "Resultado da adição: $result"
}

# Função para subtração
subtraction() {
  result=$(echo "$1 - $2" | bc)
  echo "Resultado da subtração: $result"
}

# Função para multiplicação
multiplication() {
  result=$(echo "$1 * $2" | bc)
  echo "Resultado da multiplicação: $result"
}

# Função para divisão
division() {
  result=$(echo "scale=2; $1 / $2" | bc)
  echo "Resultado da divisão: $result"
}

# Loop para o menu
while true; do
  echo "Selecione uma operação:"
  echo "1. Adição"
  echo "2. Subtração"
  echo "3. Multiplicação"
  echo "4. Divisão"
  echo "5. Sair"

  read -p "Escolha uma opção: " option

  case $option in
    1)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      addition $num1 $num2
      ;;
    2)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      subtraction $num1 $num2
      ;;
    3)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      multiplication $num1 $num2
      ;;
    4)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      if [ $num2 -eq 0 ]; then
        echo "Erro: divisão por zero"
      else
        division $num1 $num2
      fi
      ;;
    5)
      echo "Saindo..."
      exit 0
      ;;
    *)
      echo "Opção inválida. Por favor, escolha uma opção válida."
      ;;
  esac
done
