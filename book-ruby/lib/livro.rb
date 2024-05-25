class Livro

  attr_accessor :nome
  attr_accessor :categoria

  def initialize (nome, autor, categoria)
    @nome = nome
    @autor = autor
    @categoria = categoria
  end

  def to_s
    puts "Nome: #{@nome}, Autor: #{@autor}, Categoria: #{@categoria}"
  end
end


