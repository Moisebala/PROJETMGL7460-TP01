class Contact

  attr_reader :nom, :prenom, :numeroTel

  def initialize(nom, prenom, numero)
    @nom = nom
        @prenom =prenom
            @numeroTel = numero
  end

  def to_s
    @nom + "," + @prenom + "," + @numeroTel

  end


end