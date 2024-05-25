class Biblioteca

  attr_accessor :estoque

  def initialize
    @estoque = []
  end

  def exibir_livros()
    if @estoque.empty?
      puts "O seu estoque está vazio!"
    else
      @estoque.each do |livro|
        puts "Nome: #{livro[:nome]}, Autor: #{livro[:autor]} Categoria: #{livro[:categoria]}"
      end
    end
  end

  def adicionar_livros(nome, autor, categoria)
    livro = {
      "nome": nome,
      "autor": autor,
      "categoria": categoria,
    }
    @estoque << livro
    puts "Livro adicionado ao estoque"
  end

  def excluir_livros
  end
end
