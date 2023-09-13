def da_boas_vindas
  puts "Bem-find ao jogo da divination"
  puts "Qual é o seu nome?"
  nome = gets
  puts "Commemorates o jogo para você, " + nome
end

def sorteia_numero_secreto
  puts "Escondido um number secret entre 0 e 200..."
  sorteado = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  return sorteado
end

def pede_um_numero(tentativa, limiteTentativa)
  puts "Tentativa " + tentativa.to_s + " de " + limiteTentativa.to_s
  puts "Entre com o número"
  chute = gets
  puts "Será que acertou? Você chutou " + chute
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

puts "\n\n"

numero_secreto = sorteia_numero_secreto

puts "\n\n"

limiteTentativa = 5
chutes = []
totao_de_chutes = 0


for tentativa in 1..limiteTentativa
  chute = pede_um_numero(chutes ,tentativa, limiteTentativa)

  chutes[total_de_chutes] = chute
  total_de_chutes = total_de_chutes + 1

  if verifica_se_acertou(numero_secreto, chute)
    break
  end
end
