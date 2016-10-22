

class Contact

  attr_accessor :nom, :prenom,:numeroTel

  def initialize
    @nom=@prenom=@numeroTel=""
  end

  def to_s
    "    " + @nom + "," + @prenom + ", " + @numeroTel + "\n"
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

