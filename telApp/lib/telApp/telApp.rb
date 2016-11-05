module TelApp

  class << self
    attr_accessor :nom_fichier
  end

  def self.modifier(nom, numero, nom_fichier)
  rep = []
  Fichier.ouvrir_fichier(nom_fichier, rep)
  rep.each do |contact|
    if contact.nom.match( /#{nom}/i )
      contact2=Contact.new(contact.nom, contact.prenom, numero)
    end

  end
  Tableau.copieTableau(contact2,nom,nom_fichier)
  end


  def self.supprimer(nom)
    rep = []
    rep2 =[]
    Fichier.ouvrir_fichier(nom_fichier, rep)
    rep.each do |contact| unless contact.nom.match(/#{nom}/i)
                            rep2 << contact
                          end
    end
    Fichier.ecrire_fichier(nom_fichier, rep2)
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
