def da_boas_vindas
  puts "Bem-vindo ao jogo da adivinhação"
  puts "Qual é o seu nome?"
  nome = gets
  puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200..."
  sorteado = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  return sorteado
end

def pede_um_numero(tentativa, limiteTentativa)
  puts "Tentativa " + tentativa.to_s + " de " + limiteTentativa.to_s
  puts "Entre com o número"
  chute = gets
  puts "Será que acertou? Você chutou " + chute
  return chute
end

da_boas_vindas

puts "\n\n\n"

numero_secreto = sorteia_numero_secreto

puts "\n\n\n"

limiteTentativa = 5

for tentativa in 1..limiteTentativa
  chute = pede_um_numero(tentativa, limiteTentativa)

  acertou = numero_secreto == chute.to_i

  if acertou == true
    puts "Acertou!"
    break
  else
    if numero_secreto > chute.to_i
      puts "O número é maior"
    else
      puts "O número é menor"
    end
  end
end
