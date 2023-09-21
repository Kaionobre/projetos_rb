def da_boas_vindas
  puts "Bem-find ao jogo da divination"
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo para você, #{nome}"
end

def sorteia_numero_secreto
  puts "Escondido um number secret entre 0 e 200..."
  sorteado = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  return sorteado
end

def pede_um_numero(chutes,tentativa, limiteTentativa)
  puts "Tentativa #{tentativa} de #{limiteTentativa}"
  puts "Chutes até agora: #{chutes}"
  puts "Entre com o número"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute} "
  return chute.to_i
end

def verifica_se_acertou (numero_secreto, chute)
  acertou = numero_secreto == chute

  if acertou == true
    puts "Acertou!"
    return true
  end

  maior = numero_secreto > chute

  if maior
    puts "O número é maior"
  else
    puts "O número é menor"
  end
  return false
  return numero_secreto
  return maior
end



da_boas_vindas

numero_secreto = sorteia_numero_secreto

pontos_ate_agora = 1000


limiteTentativa = 5
chutes = []

for tentativa in 1..limiteTentativa
  chute = pede_um_numero(chutes ,tentativa, limiteTentativa)
  chutes << chute

  pontos_a_perder = (chute - numero_secreto).abs / 2.0
  pontos_ate_agora -= pontos_a_perder

  if verifica_se_acertou(numero_secreto, chute)
    break
  end
end

puts "Você ganhou #{pontos_ate_agora} pontos."
