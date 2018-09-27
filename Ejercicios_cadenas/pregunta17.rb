def obtenerMontoEntrada(tipoEntrada)
	 
end
    
def validarCodigo(codigo, listaCodigos)

end

def obtenerMontoDescuentoCodigo(codigo, listaCodigos, listaMontoDescuento)
	 
end

def obtenerMontoPagar(codigo, tipoEntrada, listaCodigos, listaMontoDescuento)
	 
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
