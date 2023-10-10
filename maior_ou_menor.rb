def da_boas_vindas
  puts "Bem-vindo ao jogo da advinhação"
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo para você, #{nome}"
end

def pede_dificuldade
  puts "Selecione o nível de dificuldade (1 - facil, 5 - difícil)"
  dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)

  case dificuldade
  when 1
    maximo = 30
  when 2
    maximo = 60
   when 3
    maximo = 100
  when 4
    maximo = 150
  else
    maximo = 200
  end

  puts "Escondido um number secret entre 1 e #{maximo}..."
  sorteado = rand(maximo) +1
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
  acertou = numero_secreto == chute.to_i

  if acertou == true
    puts "Acertou!"
    return true
  end

  maior = numero_secreto > chute.to_i

  if maior
    puts "O número é maior"
  else
    puts "O número é menor"
  end
  return false
end

def joga (nome, dificuldade)
  numero_secreto = sorteia_numero_secreto(dificuldade)

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
end

def quer_jogar
  puts "Deseja jogar novamente? (S/N)"
  quero_jogar = gets.strip
  quero_jogar.upcase == "S"
end

nome = da_boas_vindas
dificuldade = pede_dificuldade
joga nome, dificuldade

while quer_jogar
    joga nome, dificuldade
end
