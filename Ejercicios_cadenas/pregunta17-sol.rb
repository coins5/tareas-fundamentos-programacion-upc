def obtenerMontoEntrada(tipoEntrada)
	
	if(tipoEntrada == "normal")
		return 700
	elsif(tipoEntrada == "silver")
		return 1700
	elsif(tipoEntrada == "gold")
		return 2700
	end

	return 0
end
    
def validarCodigo(codigo, listaCodigos)

	if(codigo.length != 10)
		return false
	end

	for i in 0...listaCodigos.size
		if(codigo == listaCodigos[i])
			return true
		end
	end

	return false

end

def obtenerMontoDescuentoCodigo(codigo, listaCodigos, listaMontoDescuento)
	
	esValido = validarCodigo(codigo, listaCodigos)
	if(!esValido)
		return 0
	end

	for i in 0...listaCodigos.size
		if(codigo == listaCodigos[i])
			return listaMontoDescuento[i]
		end
	end
	return 0
end

def obtenerMontoPagar(codigo, tipoEntrada, listaCodigos, listaMontoDescuento)
	
	monto = obtenerMontoEntrada(tipoEntrada)
	descuento = obtenerMontoDescuentoCodigo(codigo, listaCodigos, listaMontoDescuento)

	aPagar = monto-descuento

	if(aPagar<0)
		return 0
	else
		return aPagar
	end
	
end

#----------Zona de Test------------------

def test_obtenerMontoEntrada
  print validate(700, obtenerMontoEntrada("normal"))
  print validate(2700, obtenerMontoEntrada("gold"))
  print validate(1700, obtenerMontoEntrada("silver"))
  print validate(0, obtenerMontoEntrada("ultra"))
end
    
def test_validarCodigo
	print validate(false, validarCodigo("asdf", @listaCodigos))
    print validate(true, validarCodigo("ASDF123456", @listaCodigos))
	print validate(false, validarCodigo("ASDF987654", @listaCodigos))
end

def test_obtenerMontoDescuentoCodigo
	print validate(0, obtenerMontoDescuentoCodigo("asdf", @listaCodigos, @montosDescuento))
    print validate(100, obtenerMontoDescuentoCodigo("ASDF123456", @listaCodigos, @montosDescuento))
    print validate(1200, obtenerMontoDescuentoCodigo("AARAA0034D", @listaCodigos, @montosDescuento))
    print validate(0, obtenerMontoDescuentoCodigo("ASDF987654", @listaCodigos, @montosDescuento))
end

def test_obtenerMontoPagar
	print validate(700, obtenerMontoPagar("asdf", "normal", @listaCodigos, @montosDescuento))
    print validate(2600, obtenerMontoPagar("ASDF123456", "gold", @listaCodigos, @montosDescuento))
    print validate(500, obtenerMontoPagar("AARAA0034D", "silver", @listaCodigos, @montosDescuento))
    print validate(0, obtenerMontoPagar("AARAA0034D", "normal", @listaCodigos, @montosDescuento))
   
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	@listaCodigos = ["AVIAV1223D",
		       		 "LANLA0342T",
		       		 "AARAA0034D",
			         "COPCP0234D",
			         "ASDF123456"]
		
	@montosDescuento = [300,
						900,
						1200,
						400,
						100]

	puts "Test de prueba del programa"
	puts "---------------------------"
	test_obtenerMontoEntrada
	test_validarCodigo
	test_obtenerMontoDescuentoCodigo
	test_obtenerMontoPagar
	puts " "
end
test
