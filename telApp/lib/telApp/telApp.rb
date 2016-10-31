module TelApp

    def self.modifier(nom,numero,nom_fichier)
      contact = Contact.new
      rep = []
      bd = File.open(nom_fichier,"a+")
      bd.each_line do |line|
        rep << line
      end
      rep.each { |line| value = line.split(',')
      for name in value
        if  name.match (/#{nom}/i)
          contact.nom = value[0]
          contact.prenom = value[1]
         contact.numeroTel = numero
          line=line.gsub(value[2],numero)
          rep.push line
        end

      end
      }
       puts rep

    end


  def self.supprimer(nom,nom_fichier)
    rep = []
     bd = File.open(nom_fichier,"a+")
     bd.each_line do |line|
       rep << line unless line.match(/#{nom}/i)
       end
     bd.close
    Fichier.ecrire_fichier(nom_fichier, rep)
    puts rep
  end


  def self.afficher(nom_fichier)
   rep = []
   Fichier.ouvre_fichier(nom_fichier, rep)
    puts rep

  end


  def self.ajouter(nom,prenom,numeroTel,nom_fichier)
    rep = []
    Fichier.ouvre_fichier(nom_fichier, rep)
    contact = Contact.new
    contact.nom = nom
    contact.prenom = prenom
    contact.numeroTel = numeroTel
    puts "Le contact a ete ajouter avec succes :"
    rep.push contact
    puts contact
    Fichier.ecrire_fichier(nom_fichier, rep)
  end

  def self.rechercher(nom,nom_fichier)
    rep = []
    Fichier.ouvre_fichier(nom_fichier, rep)
     rep.each  do |line|
     if line.match( /#{nom}/i )
       puts line

    end
    end
    end
  end
