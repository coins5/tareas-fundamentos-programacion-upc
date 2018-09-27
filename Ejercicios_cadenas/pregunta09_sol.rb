def decodificarPalabra(palabra)
	nueva = ""
	for i in 0..palabra.size-1
		if(i%3==1)
			nueva = nueva + palabra[i]
		end
	end
	return nueva
end
    
def tieneSegundaDecodificacion(palabra)
	palabraDec = decodificarPalabra(palabra)
	primera = palabraDec[0]
	if (primera == "0" || primera == "1" || primera == "2" || primera == "3"||
		primera == "4" || primera == "5" || primera == "6" || primera == "7"||
		primera == "8" || primera == "9" )
		return true
	end
	return false
end

def realizarSegundaDecodificacion(palabra)
	nueva = ""
	for i in 1..palabra.size-1
		if(palabra[i] == "A")
			nueva = nueva + "O"
		elsif(palabra[i] == "E")
			nueva = nueva + "I"
		elsif(palabra[i] == "I")
			nueva = nueva + "U"
		elsif(palabra[i] == "O")
			nueva = nueva + "A"
		elsif(palabra[i] == "U")
			nueva = nueva + "E"
		else
			nueva = nueva + palabra[i]
		end
	end
	return nueva
end

#----------Zona de Test------------------

def test_decodificarPalabra
  print validate("HOLA", decodificarPalabra("AHEROTYLWEAN"))
  print validate("PERFECTA", decodificarPalabra("RPEREWERVBFGHESDCJKTASAA"))
  print validate("1ERAVEZ", decodificarPalabra("Q1WEERTRYUAIOVPLEKJZH"))
end
    
def test_tieneSegundaDecodificacion
	print validate(false, tieneSegundaDecodificacion("AHEROTYLWEAN"))
    print validate(false, tieneSegundaDecodificacion("RPEREWERVBFGHESDCJKTASAA"))
	print validate(true, tieneSegundaDecodificacion("Q1WEERTRYUAIOVPLEKJZH"))
end

def test_realizarSegundaDecodificacion
	print validate("NECESITO", realizarSegundaDecodificacion("7NUCUSETA"))
    print validate("APROBAR", realizarSegundaDecodificacion("6OPRABOR"))
    print validate("EL", realizarSegundaDecodificacion("2UL"))
    print validate("CURSO", realizarSegundaDecodificacion("3CIRSA"))
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	puts "Test de prueba del programa"
	puts "---------------------------"
	puts test_decodificarPalabra
	puts test_tieneSegundaDecodificacion
	puts test_realizarSegundaDecodificacion
	puts " "
end
test
