def calculadora_basica
  puts "Vou calcular tudo para você. Digite o primeiro número:"
  entrada_1 = gets.chomp # Remove o caractere de quebra de linha (\n)

  puts "Digite o segundo número:"
  entrada_2 = gets.chomp # Remove o caractere de quebra de linha (\n)

  puts "Digite a operação desejada (+, -, /, *):"
  entrada_operador = gets.chomp # Remove o caractere de quebra de linha (\n)

  case entrada_operador
  when "+"
    resultado = entrada_1.to_f + entrada_2.to_f # Usar to_f para permitir números decimais
    puts "Resultado: #{resultado}"

  when "-"
    resultado = entrada_1.to_f - entrada_2.to_f
    puts "Resultado: #{resultado}"

  when "*"
    resultado = entrada_1.to_f * entrada_2.to_f
    puts "Resultado: #{resultado}"

  when "/"
    if entrada_2.to_f != 0
      resultado = entrada_1.to_f / entrada_2.to_f
      puts "Resultado: #{resultado}"
    else
      puts "Erro: Divisão por zero!"
    end

  else
    puts "Operação inválida!"
  end
end

calculadora_basica
