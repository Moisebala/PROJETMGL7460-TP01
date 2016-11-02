module Tableau

  def self.copieTableau(contact, nom,nom_fichier)
    rep = []
    rep2 =[]
    Fichier.ouvrir_fichier(nom_fichier, rep)
    rep.each do |line| unless line.match(/#{nom}/i)
                         rep2 << line
                       end
    end
    rep2.push contact
    Fichier.ecrire_fichier(nom_fichier, rep2)
  end


  def self.trouver_contact(repertoire,nom)
    repertoire.select do |line|
      if line.match( /#{nom}/i )
        return line
      end
    end
  end


end