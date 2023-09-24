
# Jogo da forca



def sorteia_palavra
  chaves_sorteio = rand(4)
  puts "Esse é o indice randônico #{chaves_sorteio}"
  return chaves_sorteio
end

def seleciona_palavra(chaves_sorteio)

  palavras = ["Melancia", "Galinha", "Carro", "Computador"]

  case chaves_sorteio
  when 0
    palavra_sorteada = palavras[0]
  when 1
    palavra_sorteada = palavras[1]
  when 2
    palavra_sorteada = palavras[2]
  when 3
    palavra_sorteada = palavras[3]
  end
  puts palavra_sorteada
  return palavra_sorteada
end

def mostra_palavra(palavra_sorteada)
  tamanho_da_palavra = palavra_sorteada.size
  return tamanho_da_palavra
end

sorteia_palavra

seleciona_palavra(sorteia_palavra)
