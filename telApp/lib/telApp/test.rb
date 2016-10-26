Module Fichier

def ouvre_fichier(nom_fichier)
  begin
    fichier = File.open(nom_fichier, "a+")
  rescue
    nom_fichier = gets.chomp
    retry
  end
end


