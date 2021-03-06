def hombresMayor40(listaEdades, listaSexos)
	contador = 0
	for i in 0..listaEdades.size-1
		if (listaSexos[i] == "M" and listaEdades[i] > 40)
			contador = contador + 1
		end
	end
	return contador
end

def obtenerNombre(dni, listaDocumentos, listaNombres)
	for i in 0..listaDocumentos.size-1
		if (listaDocumentos[i] == dni)
			return listaNombres[i]
		end
	end
end

def obtenerNumHomonimos(nombre, listaNombres)
	contador = 0
	for i in 0..listaNombres.size-1
		if (listaNombres[i] == nombre)
			contador = contador + 1
		end
	end
	return contador
end

def coincidenciaEdad(documentos, edades)
	# Se puede hacer descomponiendo de 100 en 100, como hacíamos para hallar los dígitos
	# Pero lo haremos index(str)
	contador = 0
	for i in 0..documentos.size-1
		if (documentos[i].to_s.index(edades[i].to_s) != nil)
			contador = contador + 1
		end
	end
	return contador
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

def pregunta_4
	documentos = ["42264954", "45553237", "44234532", "49000021", "43612323"]
	edades = [22,20,44,35,46]
	documentos1 = ["42264999", "45553777"]
	edades1 = [15,77]
	documentos2 = ["45564999", "41233777"]
	edades2 = [17,53]
    print validate(2, coincidenciaEdad(documentos, edades))
	print validate(1, coincidenciaEdad(documentos1, edades1))
	print validate(0, coincidenciaEdad(documentos2, edades2))
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
  pregunta_4
  puts " "
end
test