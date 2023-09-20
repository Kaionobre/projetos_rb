#soma de Números Pares: Escreva uma função que recebe um número inteiro n e retorna a soma de todos os números pares de 1 a n.

def soma_numeros_pares
  puts "Digite um número: "

  numero = gets

  numero_inicial = 0

  par = 0

  while numero_inicial <= numero.to_i
    numero_inicial += 1

    if numero_inicial % 2 == 0
      par += numero_inicial
    else
      next
    end

  end

  puts "A soma de todos os números pares de " +numero.to_s+ "é "+par.to_s
end

soma_numeros_pares
