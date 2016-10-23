

class Contact

  attr_accessor :nom, :prenom,:numeroTel

  def initialize
    @nom=@prenom=@numeroTel=""
  end

  def to_s
    "    " + @nom + "," + @prenom + ", " + @numeroTel + "\n"
  end

end

def ouvre_fichier(nom_fichier)
  begin
    fichier = File.open(nom_fichier, "a+")
  rescue
    #demande à l'utilisateur de saisir le nom du fichier
    puts "Le fichier n'a pas pu être ouvert, merci de saisir un nom correct"
    nom_fichier = gets.chomp
    retry
  end
end

def self.aff
  contact = Contact.new
  contact.nom="Moussa"
  contact.prenom="Balla"
  contact.numeroTel="514374758"
  puts.contact

  bd.readlines("contacts.txt").each do |line|
    result = line.split(",")
    result.each do |value| if/#{nom}/=~value
                             puts value

                           end

    end

end
end

