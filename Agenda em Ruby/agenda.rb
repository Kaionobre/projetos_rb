@agenda = [
  {nome: "Kaio", telefone: "83999066890"},
  {nome: "Marcos", telefone: "83998546895"},
]

def todos_contatos
  @agenda.each do |contato|
    puts "#{contato[:nome]} - #{contato[:telefone]}"
  end
  puts "-----------------------------------------"
end

def adicionar_contatos
  print "Nome:"
  nome = gets.chomp
  print "Telefone:"
  telefone = gets.chomp

  @agenda << {nome: nome, telefone: telefone}
end

def ver_contato
  print "Qual contato você deseja?"
  nome = gets.chomp
  @agenda.each do |contato|
    if contato [:nome].downcase.include?(nome.downcase)
      puts "#{contato [:nome]} - #{contato [:telefone]}"
      puts "-----------------------------------------"
    end
  end
end

def editar_contato
  print "Qual nome deseja editar?"
  nome = gets.chomp

  @agenda.each do |contato|
    if contato[:nome].downcase == (nome.downcase)
      print "Nome para editar (Se queres manter o mesmo nome apert Enter): "
      nome_salvo = contato[:nome]

      contato[:nome] = gets.chomp
      contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome]

      print "Telefone para editar (Se queres manter o mesmo telefone apert Enter): "
      telefone_salvo = contato[:telefone]

      contato[:telefone] = gets.chomp
      contato[:telefone] = contato[:telefone].empty? ? telefone_salvo : contato[:telefone]
    end

  end

end

loop do

  puts "1. Contatos\n2. Adicionar contatos\n3. Ver contatos\n4. Editar contatos\n5. Remover contatos\n6. Sair "
  codigo = gets.chomp.to_i

  case
  when codigo == 6
    puts "Até mais!"
    break
  when codigo == 1
    todos_contatos
  when codigo == 2
    adicionar_contatos
  when codigo == 3
    ver_contato
  when codigo == 4
    editar_contato
  end

end
