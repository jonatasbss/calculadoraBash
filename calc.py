def addition(num1, num2):
    return num1 + num2

def subtraction(num1, num2):
    return num1 - num2

def multiplication(num1, num2):
    return num1 * num2

def division(num1, num2):
    if num2 == 0:
        return "Erro: divisão por zero"
    else:
        return num1 / num2

while True:
    print("Selecione uma operação:")
    print("1. Adição")
    print("2. Subtração")
    print("3. Multiplicação")
    print("4. Divisão")
    print("5. Sair")

    option = input("Escolha uma opção: ")

    if option == '5':
        print("Saindo...")
        break
    elif option in ('1', '2', '3', '4'):
        num1 = float(input("Digite o primeiro número: "))
        num2 = float(input("Digite o segundo número: "))

        if option == '1':
            print("Resultado da adição:", addition(num1, num2))
        elif option == '2':
            print("Resultado da subtração:", subtraction(num1, num2))
        elif option == '3':
            print("Resultado da multiplicação:", multiplication(num1, num2))
        elif option == '4':
            print("Resultado da divisão:", division(num1, num2))
    else:
        print("Opção inválida. Por favor, escolha uma opção válida.")
