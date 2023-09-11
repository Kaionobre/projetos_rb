
puts "Bem-vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets
puts "\n\n\n\n\n\n"
puts "Começaremos o jogo para você, " + nome
puts "Escolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
puts "\n\n\n\n\n\n"
puts "Tentativa 1"
puts "Entre com o número"
chute = gets
puts "Será que acertou? Você chutou " + chute

acertou = numero_secreto == chute.to_i

# Comentando aqui!

=begin
 Comentando aqui!
 E aqui tbm!
=end

if acertou == true
  puts "Acertou!"
else
  if numero_secreto > chute.to_i
    puts "O número é maior"
  else
    puts "O número é menor"
  end
end
