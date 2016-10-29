module TelApp

  class Contact

    attr_accessor :nom, :prenom,:numeroTel

    def initialize
      @nom=@prenom=@numeroTel=""
    end

    def to_s
      ""+ @nom +"," + @prenom +"," + @numeroTel +""
    end

  end
  
    def self.modifier(nom,numero,nom_fichier)
      contact=Contact.new
      rep=[]
      bd=File.open(nom_fichier,"a+")
      bd.each_line { |line|
        rep<<line }
      rep.each { |line| value=line.split(',')
      for name in value
        if  name.match (/#{nom}/i)
          contact.nom =value[0]
          contact.prenom =value[1]
         contact.numeroTel =numero
        end

      end
      }
      rep.push contact
      puts rep

    end


  def self.supprimer(nom,nom_fichier)
     rep=[]
     bd=File.open(nom_fichier,"a+")
     bd.each_line { |line|
       rep<<line unless line.match(/#{nom}/i)
       }
     bd.close
    bd = File.open(nom_fichier,"w+")
     puts rep
    bd.puts(rep)
    bd.close
  end


  def self.afficher(nom_fichier)
   rep=[]

   bd = File.open(nom_fichier,"r+")
       bd.each_line { |line|
         rep<<line}
    puts rep

  end


  def self.ajouter(nom,prenom,numeroTel,nom_fichier)
    rep=[]
    bd=File.open(nom_fichier,"a+")
    contact= Contact.new
    contact.nom=nom
    contact.prenom=prenom
    contact.numeroTel=numeroTel
    puts "Le contact a ete ajouter avec succes :"
    rep.push contact
    puts contact
    bd.puts(rep)
    bd.close
  end

  def self.rechercher(nom,nom_fichier)

   bd = File.open(nom_fichier,"r+") do |f|
     f.each  do |line|
    if line.match( /#{nom}/i )
       puts line

    end
    end
    end
  end
end
