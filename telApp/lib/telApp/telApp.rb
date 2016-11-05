module TelApp

  class << self
    attr_accessor :nom_fichier
  end

  def self.modifier(nom, numero)
  rep = []
  Fichier.ouvrir_fichier(nom_fichier, rep)
  rep.each do |contact|
    if contact.nom.match( /#{nom}/i )
       contact.numeroTel=numero
    end
  end
  Fichier.ecrire_fichier(nom_fichier, rep)
  Tableau.trouver_contact(rep , nom)
  end


  def self.supprimer(nom)
    rep = []
    Fichier.ouvrir_fichier(nom_fichier, rep)
    rep.each do |contact|
      if contact.nom.match(/#{nom}/i)

      end
    end
    Fichier.ecrire_fichier(nom_fichier, rep)
    Tableau.trouver_contact(rep , nom)
  end



  def self.afficher()
    rep=[]
    Fichier.ouvrir_fichier(nom_fichier,rep)
    return rep

  end


  def self.ajouter(nom,prenom,numeroTel)
    rep = []
    Fichier.ouvrir_fichier(nom_fichier , rep)
    contact = Contact.new(nom ,prenom ,numeroTel)
    rep.push contact
    Fichier.ecrire_fichier(nom_fichier, rep)
    return contact
  end


  def self.rechercher(nom)
    rep = []
    Fichier.ouvrir_fichier(nom_fichier, rep)
    Tableau.trouver_contact(rep , nom)
  end
end
