def obtenerEstadoVuelo(vuelos, nroVuelo)

end
    
def obtenerNumeroVuelosRetradadosAerolinea(vuelos,aerolinea)

end

def obtenerVuelosDespues18Horas(vuelos)

end

#----------Zona de Test------------------

def test_obtenerEstadoVuelo
  print validate("D", obtenerEstadoVuelo(@vuelos, "AV1223"))
  print validate("D", obtenerEstadoVuelo(@vuelos, "AA0034"))
  print validate("C", obtenerEstadoVuelo(@vuelos, "CP0123"))
end
    
def test_obtenerNumeroVuelosRetradadosAerolinea
	print validate(2, obtenerNumeroVuelosRetradadosAerolinea(@vuelos,"AAR"))
    print validate(1, obtenerNumeroVuelosRetradadosAerolinea(@vuelos,"AVI"))
	print validate(0, obtenerNumeroVuelosRetradadosAerolinea(@vuelos,"TAM"))
end

def test_obtenerVuelosDespues18Horas
	print validate(4, obtenerVuelosDespues18Horas(@vuelos))
    print validate(1, obtenerVuelosDespues18Horas(@vuelos2))
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	@vuelos = ["AVIAV1223D12:34",
		       "LANLA0342T03:35",
		       "AARAA0034D18:35",
		       "COPCP0234D19:35",
		       "AARAA1280D18:01",
		       "IBEIB0079C19:55",
		       "COPCP0123C15:35"]
		
	@vuelos2 = ["AVIAV1223D12:34",
		       "LANLA0342T23:35",
		       "COPCP0123C15:35"]

	puts "Test de prueba del programa"
	puts "---------------------------"
	test_obtenerEstadoVuelo
	test_obtenerNumeroVuelosRetradadosAerolinea
	test_obtenerVuelosDespues18Horas
	puts " "
end
test
