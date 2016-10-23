module TelApp

  class Contact

    attr_accessor :nom, :prenom,:numeroTel

    def initialize
      @nom=@prenom=@numeroTel=""
    end

    def to_s
      "\n" + @nom + "," + @prenom + "," + @numeroTel + ""
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
    puts "\nLe contact a ete ajouter avec succes :"
    puts  contact
    bd.puts(contact)
    bd.close
  end

  def self.rechercher(nom)
    bd=File.open("contacts.txt","a+")
    bd.each_line("contacts.txt") do |line|
      result = line.split(",")
      result.each do |value| if/#{nom}/=~value
                               puts value

                             end
      end
    end
  end

end
