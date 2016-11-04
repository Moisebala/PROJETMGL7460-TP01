module Tableau

  def self.copieTableau(nom,nom_fichier)
    rep = []
    rep2 =[]
    Fichier.ouvrir_fichier(nom_fichier, rep)
    rep.each do |contact| unless contact.nom.match(/#{nom}/i)
                         rep2 << contact
                       end
    end
    Fichier.ecrire_fichier(nom_fichier, rep2)
  end


  def self.trouver_contact(repertoire,nom)
    repertoire.select do |contact|
      if contact.nom.match( /#{nom}/i )
        return contact
      end
    end
  end


end