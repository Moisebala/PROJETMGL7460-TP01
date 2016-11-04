
pre do |global,command,options,args|
  rep=[]
  fichier = global[:fichier]
  Fichier.ouvrir_fichier(fichier,rep)
  true
end

post do |global,command,options,args|
  rep=[]
  fichier =global[:fichier]
  Fichier.ecrire_fichier(fichier,rep)
end

on_error do |exception|
  # Error logic here
  # return false to skip default error handling
  STDERR.puts "*** Oops! Exception signalee dans telAppp!!"
  STDERR.puts "exception = #{exception.inspect}"
  STDERR.puts exception.backtrace
  false
end