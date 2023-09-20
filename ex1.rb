#soma de Números Pares: Escreva uma função que recebe um número inteiro n e retorna a soma de todos os números pares de 1 a n.


puts "Digite um número: "

numero = gets

numero_inicial = 0

while numero_inicial <= numero.to_i
  puts numero_inicial
  numero_inicial = numero_inicial + 1

  if
    numero_inicial == numero
    break
  end
end
