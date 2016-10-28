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
  
    def self.modifier(nom,numeroTel,nom_fichier)

      File.open(nom_fichier,"a+") do |f|
    f.each do |line|
     
    if line.match( /#{nom}/i )
      
     value = line.split(",")
      
      value[2]= numeroTel
    
     print value [2]
  
    end
    end
    end
    end
  
  def self.supprimer(nom,prenom,nom_fichier)

      File.open(nom_fichier,"w+") do |f|
   f.each do |line|
     
    if line.match( /#{nom} and #{prenom}/i )
     line.reject
     
    end
    end
    end
  end

  def self.afficher(nom_fichier)

   bd=File.open(nom_fichier,"a+")
   bd.readlines(nom_fichier).each do |line|
   puts line
   bd.close

   end
  end

  def self.ajouter(nom,prenom,numeroTel,nom_fichier)
    bd=File.open(nom_fichier,"a+")
    contact= Contact.new
    contact.nom=nom
    contact.prenom=prenom
    contact.numeroTel=numeroTel
    puts "Le contact a ete ajouter avec succes :"
    puts  contact
    bd.puts(contact)
    bd.close
  end

  def self.rechercher(nom,nom_fichier)
     File.open(nom_fichier,"r+") do |f|
   f.each do |line|
    if line.match( /#{nom}/i )
     puts line
    end
    end
    end
  end
end
