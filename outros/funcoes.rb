# Claro, aqui estão 10 questões em Ruby que envolvem lógica e funções, mas não envolvem listas ou matemática:

# 9. Escreva uma função `remove_consonants` que recebe uma string como argumento e retorna a string sem consoantes.
# 10. Escreva uma função `replace_spaces` que recebe uma string como argumento e retorna a string com todos os espaços substituídos por hífens.

# Espero que você ache isso interessante e desafiador! Por favor, me envie suas respostas quando estiver pronto.


# 1. Escreva uma função `is_vowel?` que recebe um caractere como argumento e retorna `true` se o caractere é uma vogal, ou `false` caso contrário.
# def is_vowel?(caractere)

#     vogais = ["a", "e", "i", "o", "u"]

#     for i in vogais
#         if caractere == i
#             puts "Verdade"
#         else
#             puts "Mentira"
#         end
#     end

# end

# is_vowel?("a")

# # 2. Escreva uma função `is_consonant?` que recebe um caractere como argumento e retorna `true` se o caractere é uma consoante, ou `false` caso contrário.

# def is_consonant?(caractere)

#     vogais = ["a", "e", "i", "o", "u"]

#     if vogais.include?(caractere) == true
#         puts "É vogal"
#     else
#         puts "É consoante"
#     end

# end

# is_consonant?("a")

# # 3. Escreva uma função `reverse_string` que recebe uma string como argumento e retorna a string invertida.

# def reverse_string(string)
#     puts string.reverse
# end

# reverse_string("cassio")

# 4. Escreva uma função `is_palindrome?` que recebe uma string como argumento e retorna `true` se a string é um palíndromo, ou `false` caso contrário.

# def is_palindrome?(string)

#     novaString = string.reverse

#     validacao = novaString == string
#     puts validacao

# end

# is_palindrome?("natan")

# # 5. Escreva uma função `count_words` que recebe uma string como argumento e retorna o número de palavras na string.

# def count_words(string)
#     espacos = string.count(" ")
#     numPalavras = espacos + 1
#     puts numPalavras
# end

# count_words("Eu amo Jesus Cristo")

# # 6. Escreva uma função `capitalize_words` que recebe uma string como argumento e retorna a string com a primeira letra de cada palavra em maiúscula.

# def capitalize_words(string)
#     puts string.capitalize
# end

# capitalize_words("parede")


# 7. Escreva uma função `titleize` que recebe uma string como argumento e retorna a string com a primeira letra de cada palavra em maiúscula, exceto para palavras pequenas como "a", "an", "the", "and", "but", "or", "for", "nor", "on", "at", "to", "from", "by", "over", "under".

# def titleize(string)
#     # Lista de palavras pequenas que não devem ser capitalizadas
#     small_words = ["a", "an", "the", "and", "but", "or", "for", "nor", "on", "at", "to", "from", "by", "over", "under"]
  
#     # Divide a string em palavras
#     words = string.split(" ")
  
#     # Capitaliza a primeira letra de cada palavra, exceto para palavras pequenas
#     titleized_words = words.map do |word|
#       if small_words.include?(word)
#         word
#       else
#         word.capitalize
#       end
#     end
  
#     # Junta as palavras novamente em uma string
#     titleized_string = titleized_words.join(" ")
  
#     return titleized_string
#   end
  

# 8. Escreva uma função `remove_vowels` que recebe uma string como argumento e retorna a string sem vogais.


class main
  def initialize
    
  end
end






