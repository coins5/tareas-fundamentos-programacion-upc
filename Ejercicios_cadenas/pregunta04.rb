def hombresMayor40(listaEdades, listaSexos)
	
end

def obtenerNombre(dni, listaDocumentos, listaNombres)
	
end

def obtenerNumHomonimos(nombre, listaNombres)
	
end

#--- zona de test ----


def pregunta_1
	edades = [22,20,44,35,46]
	sexos = ['M','F','F','M','M']
	edades1 = [22,20,54,55,46]
	sexos1 = ['M','F','F','M','M']
    print validate(1, hombresMayor40(edades, sexos)) 
	print validate(2, hombresMayor40(edades1, sexos1)) 
end

def pregunta_2
	documentos = ["42264954", "45553237", "44234532", "49000021", "43612323"]
	nombres = ["Jose Ruiz", "Maria Prado", "Luz Delgado", "Mario Ruiz", "Jose Ruiz"]
    print validate("Jose Ruiz", obtenerNombre("42264954", documentos, nombres))
	print validate("Maria Prado", obtenerNombre("45553237", documentos, nombres))
end

def pregunta_3
	nombres = ["Jose Ruiz", "Maria Prado", "Luz Delgado", "Mario Ruiz", "Jose Ruiz"]
    print validate(2, obtenerNumHomonimos("Jose Ruiz",nombres))
    print validate(1, obtenerNumHomonimos("Maria Prado",nombres))
	print validate(0, obtenerNumHomonimos("Maria Salgado",nombres))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  pregunta_1
  pregunta_2
  pregunta_3 
  puts " "
end
test