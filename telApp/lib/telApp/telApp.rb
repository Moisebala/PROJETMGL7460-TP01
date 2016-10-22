module TelApp

  class Contact

    attr_accessor :nom, :prenom,:numeroTel

    def initialize
      @nom=@prenom=@numeroTel=""
    end

    def to_s
      "" + @nom + "," + @prenom + "," + @numeroTel + "\n"
    end

  end
  def self.afficher
    contact = Contact.new
    contact.nom="Moussa"
    contact.prenom="Balla"
    contact.numeroTel="514374758"
    puts contact

  end
  def self.montest

    puts 'Mon test a marche'

  end
end
