module TelApp

  class Contact

    attr_accessor :nom, :prenom,:numeroTel

    def initialize
      @nom=@prenom=@numeroTel=""
    end

    def to_s
      "" + @nom + "," + @prenom + "," + @numeroTel + ""
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

    contact= Contact.new
    puts 'nom :'
    contact.nom=gets
    puts 'prenom :'
    contact.prenom=gets
    puts 'numero:'
    contact.numeroTel=gets
    
    puts  contact

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
