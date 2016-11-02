module TelApp

  def self.modifier(nom,numero,nom_fichier)
    contact = Contact.new
    rep = []
    Fichier.ouvrir_fichier(nom_fichier, rep)
    rep.each do |line| value = line.split(',')
      value.each  do |name|
      if name.match( /#{nom}/i )
          contact.nom = value[0]
          contact.prenom = value[1]
          contact.numeroTel = value[2]
          contact.numeroTel = numero
      end
      end
    end
    Fichier.copieTableau(contact, nom,nom_fichier)
    return contact
  end


  def self.supprimer(nom,nom_fichier)
    rep = []
    rep2=[]
    Fichier.ouvrir_fichier(nom_fichier, rep)
    rep.each do |line| unless line.match(/#{nom}/i)
                         rep2 << line
                       end
    end
    Fichier.ecrire_fichier(nom_fichier, rep2)
    Fichier.trouver_contact(rep , nom)
  end


  def self.afficher(nom_fichier)
   rep = []
   Fichier.ouvrir_fichier(nom_fichier, rep)
   return rep
  end


  def self.ajouter(nom,prenom,numeroTel,nom_fichier)
    rep = []
    Fichier.ouvrir_fichier(nom_fichier , rep)
    contact = Contact.new
    contact.nom = nom
    contact.prenom = prenom
    contact.numeroTel = numeroTel
    rep.push contact
    Fichier.ecrire_fichier(nom_fichier, rep)
    return contact
  end


  def self.rechercher(nom,nom_fichier)
    rep = []
    Fichier.ouvrir_fichier(nom_fichier, rep)
    Fichier.trouver_contact(rep , nom)
  end
end
