echo "Seja bem-vindo a calculadora."
        while true
        do
                read -p "Digite o primeiro número: " num1
                read -p "Digite o segundo número: " num2
                echo "Menu"
                echo "Escolha a operação:"
                echo "1 - Soma"
                echo "2 - Subtração"
                echo "3 - Multiplicação"
                echo "4 - Divisão"
                read -p "Digite a opção (1, 2, 3 ou 4): " opção

                if [ "$opcao" = "1" ]; then
                        resultado=$(echo "$num1 + $num2" | bc)
                        echo "Resultado: $resultado"

                elif [ "$opcao" = "2" ]; then
                        resultado=$(echo "$num1 - $num2" | bc)
                        echo "Resultado: $resultado"

                elif [ "$opcao" = "3" ]; then
                        resultado=$(echo "$num1 * $num2" | bc)
                        echo "Resultado: $resultado"

                elif [ "$opcao" = "4" ]; then
                        if [ "$num2" != "0" ]; then
                                resultado=$(echo "scale=2; $num1 / $num2" | bc)
                                echo "Resultado: $resultado"
                        else echo "Não pode-se dividir por zero!!"
                fi

                else echo "Opção inválida!"

                fi
		read -p "Deseja fazer outra operação? (s/n): " continuar
                if [ "$continuar" != "s" ]; then
                        echo "Encerrando a calculadora..."
                        break
                fi

        done
