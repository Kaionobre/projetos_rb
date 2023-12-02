#Contagem de Vogais: Crie uma função que conte o número de vogais em uma string.


puts "Digite uma String"
entrada = gets

vogais = ["a","e","i","o","u"]

for i in vogais
  if i in entrada
    puts i
  end
end
