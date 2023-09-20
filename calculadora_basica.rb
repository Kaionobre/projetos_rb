# calculadora ( + , - , / , *)

def calculadora_basica
  puts "Vou calcular todo para você, digite o primeiro número: "
  entrada_1 = gets
  "\n"

  puts "Digite o segundo número: "
  entrada_2 = gets
  "\n"


  puts "Digite a operação desejada dentro dessa lista [+ , - , / , *]"
  entrada_operador = gets
  "\n"

  if entrada_operador == "*"
    resultado = entrada_1 * entrada_2
    puts resultado.to_i

  elsif entrada_operador == "/"
    resultado = entrada_1 / entrada_2
    puts resultado.to_i
  end

  elsif entrada_operador == "+"
    resultado = entrada_1 + entrada_2
    puts resultado.to_i
  end

  elsif entrada_operador == "-"
    resultado = entrada_1 - entrada_2
    puts resultado.to_i
  end

  else
    puts "Resultado inválido"
  end
end


calculadora_basica
