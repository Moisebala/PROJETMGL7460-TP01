module TelApp

  def self.modifier(nom,numero,nom_fichier)
    contact = Contact.new
    rep = []
    Fichier.ouvre_fichier(nom_fichier, rep)
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
    copieTableau(contact, nom,nom_fichier)
    return contact
  end


  def self.copieTableau(contact, nom,nom_fichier)
    rep = []
    rep2 =[]
    Fichier.ouvre_fichier(nom_fichier, rep)
    rep.each do |line| unless line.match(/#{nom}/i)
                         rep2 << line
                       end
    end
    rep2.push contact
    Fichier.ecrire_fichier(nom_fichier, rep2)
  end

  def self.supprimer(nom,nom_fichier)
    rep = []
    rep2=[]
    Fichier.ouvre_fichier(nom_fichier, rep)
    rep.each do |line| unless line.match(/#{nom}/i)
                  rep2 << line
                       end
    end
    Fichier.ecrire_fichier(nom_fichier, rep2)
    rep.each do |line|
      if line.match( /#{nom}/i )
        return line
      end
    end
  end


  def self.afficher(nom_fichier)
   rep = []
   Fichier.ouvre_fichier(nom_fichier, rep)
    return rep
  end


  def self.ajouter(nom,prenom,numeroTel,nom_fichier)
    rep = []
    Fichier.ouvre_fichier(nom_fichier , rep)
    contact = Contact.new
    contact.nom = nom
    contact.prenom = prenom
    contact.numeroTel = numeroTel
    rep.push contact
    Fichier.ecrire_fichier(nom_fichier, rep)
    return rep
  end

  def self.rechercher(nom,nom_fichier)
    rep = []
    Fichier.ouvre_fichier(nom_fichier, rep)
     rep.each  do |line|
     if line.match( /#{nom}/i )
       return line

     end
    end
  end
end
