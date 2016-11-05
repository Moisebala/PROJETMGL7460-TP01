module Tableau

  class << self
    attr_accessor :nom_fichier
  end

  def self.trouver_contact(repertoire,nom)
    repertoire.select do |contact|
      if contact.nom.match( /#{nom}/i )
        return contact
      end
    end
  end


  def self.tableaucontact()
    rep= Array.new
    Fichier.ouvrir_fichier(nom_fichier,rep)
    return rep
  end

  def self.retourTableau(rep)
    Fichier.ecrire_fichier(nom_fichier, rep)
  end

end