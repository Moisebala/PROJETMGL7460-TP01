module TelApp

  class Contact

    attr_accessor :nom, :prenom,:numeroTel

    def initialize
      @nom=@prenom=@numeroTel=""
    end

    def to_s
      ""+ @nom +"," + @prenom +"," + @numeroTel +""
    end

  end
  
  def self.supprimer(nom)
    
      File.open("contacts.txt","w+") do |f|
   f.each do |line|
     
    if line.match( /#{nom}/i )
     line.reject
     
    end
    end
    end
  end

  def self.afficher

   bd=File.open("contacts.txt","a+")
   bd.readlines("contacts.txt").each do |line|
   puts line
   bd.close

   end
  end

  def self.ajouter
    bd=File.open("contacts.txt","a+")
    contact= Contact.new
    puts 'nom :'
    contact.nom=gets.chomp
    puts 'prenom :'
    contact.prenom=gets.chomp
    puts 'numero:'
    contact.numeroTel=gets.chomp
    puts "Le contact a ete ajouter avec succes :"
    puts  contact
    bd.puts(contact)
    bd.close
  end

  def self.rechercher(nom)
     File.open("contacts.txt","r+") do |f|
   f.each do |line|
   
    if line.match( /#{nom}/i )
     print line
    end
    end
    end
  end
end
