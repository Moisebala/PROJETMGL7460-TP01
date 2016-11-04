module Fichier

def  self.ouvrir_fichier(nom_fichier,repertoire)
  if File.exist?(nom_fichier)
  bd = File.open(nom_fichier,"a+")
  bd.each_line do |line| value = line.split(',')
  contact =Contact.new(value[0],value[1],value[2])
    repertoire << contact
    end
  end
  bd.close
end

  def self.ecrire_fichier(nom_fichier ,repertoire)
    if File.exist?(nom_fichier)
    bd = File.open(nom_fichier,"w+")
    bd.puts(repertoire)
    bd.close
    end
  end

end



