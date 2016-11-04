module TelApp

  class << self
    attr_accessor :nom_fichier
  end


  def self.modifier(nom,numero)

    rep = []
    Fichier.ouvrir_fichier(nom_fichier, rep)
    rep.each do |line| value = line.split(',')
    value.each  do |name|
      if name.match( /#{nom}/i )
        contact = Contact.new(nom,value[1],numero)
      end
      Tableau.copieTableau(contact, nom,nom_fichier)
    end
    end
  end


  def self.supprimer(nom)
    rep = []
    rep2=[]
    Fichier.ouvrir_fichier(nom_fichier, rep)
    rep.each do |line| unless line.match(/#{nom}/i)
                         rep2 << line
                       end
    end
    Fichier.ecrire_fichier(nom_fichier, rep2)
    Tableau.trouver_contact(rep , nom)
  end


  def self.afficher()
   rep = []
   Fichier.ouvrir_fichier(nom_fichier, rep)
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
