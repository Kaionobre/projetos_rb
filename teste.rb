# imprime o indice 0
#puts chute [0]

# atribui um valor no indice selecionado
#puts chute [0] = 100



chutes = []

chute = 100
tentativa = 1
chutes[tentativa - 1] = chute

for contador in 0..(tentativa - 1)
  puts "Chute: " + chutes[contador].to_s
end
