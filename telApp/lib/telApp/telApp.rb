module TelApp
  
  def self.supprimer(nom, prenom, lignes )
    lignes
    .reject { |ligne| /#{nom} and #{prenom}/ =~ ligne }
  end
  
  
  def self.afficher( nom, prenom, lignes )
    res = []
    lignes.each do |ligne|
    res << ligne if /#{nom} and #{prenom}/ =~ ligne
      res << ligne
  end
    res
  end


  def self.modifier( nomRech, prenomRech, numeroRech, codePostalRech, nom, prenom, numero, codePostal, global, lignes )
    lignes.map do |ligne|
      if /#{nom} and #{prenom}/ =~ ligne
        ligne
            .send (global ? :gsub : :sub), /#{nomRecher}/, nom, /#{prenomRech}/, numero, /#{numeroRech}/, /#{codePostalRech}/, codePostal
            else
        ligne
      end
    end
  end

  def self.rechercher( nom, prenom, lignes )
    lignes.map do |ligne|
      if /#{nom} and #{prenom}/ =~ ligne
        ligne.print(ligne)
      else
        ligne
      end
    end
  end

  def self.ajouter( nom, prenom, numero, codePostal, lignes )
  res = []
  lignes.each do |ligne|
    res << (nom + prenom + numero + codePostal + "\n") if /#{nom} and #{prenom}/ =~ ligne
    res << ligne
  end
  res
  end
end