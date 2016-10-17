module TelApp
  
  def self.traiter_fichier( nom_fichier, ext_in_place = nil )
  flux = nom_fichier == STDIN ? STDIN : File.open(nom_fichier)
  
  resultat = yield( flux )
  
  if ext_in_place
    DBC.assert nom_fichier != STDIN, "*** Pas de traitement"
    flux.close
    FileUtils.cp nom_fichier, "#{nom_fichier}#{ext_in_place}"\
          unless ext_in_place.empty?
    
    # open/close explicites pour les tests unitaires!
    flux = File.open(nom_fichier, "w")
    flux.puts resultat
    flux.close
  else
    puts resultat
  end
  end
  
  
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