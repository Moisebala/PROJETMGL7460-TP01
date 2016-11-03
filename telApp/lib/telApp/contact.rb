class Contact

  attr_accessor :nom, :prenom, :numeroTel

  def initialize
    @nom = @prenom = @numeroTel = ""
  end


  def to_s
    "" + @nom + "," + @prenom + "," + @numeroTel + ""
  end


end