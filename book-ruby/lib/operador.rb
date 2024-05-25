require_relative "biblioteca"
require_relative "livro"

biblioteca = Biblioteca.new
livro = Livro.new("Batman", "Bonifacil", "Ação")

biblioteca.adicionar_livros("Robin", "Coco", "Ação")
biblioteca.adicionar_livros("Coringa", "Shaco", "Ação")
biblioteca.adicionar_livros("Robo", "Brtt", "Ação")
biblioteca.exibir_livros()
