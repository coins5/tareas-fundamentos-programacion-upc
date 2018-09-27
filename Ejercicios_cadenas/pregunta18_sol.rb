def indicarRubro(codigo)
	sede = codigo[2..4]
	return sede
end
    
def contarSede(sede, libros)
	cont = 0

	for i in 0..libros.size-1
		codigo = libros[i]
		sedeLibro = codigo[0..1]

		if sedeLibro == sede
			cont = cont + 1
		end
	end

	return cont
end    

def contarLibros(libros)
	cont = 0

	for i in 0..libros.size-1
		codigo = libros[i]
		anhoT = codigo[7..10]
		anho = anhoT.to_i
		if anho >= 2010 && anho <= 2016
			cont = cont + 1
		end
	end

	return cont
end

#----------Zona de Test------------------

def test_pregunta1
  	print validate("SIS", indicarRubro("MOSISA1201600074232"))
  	print validate("RED", indicarRubro("SIREDZ3200000003232"))
  	print validate("IND", indicarRubro("MOINDT5200900023432"))
  	print validate("SIS", indicarRubro("VISISA5201500000023"))
  	print validate("LIT", indicarRubro("SMLITB3199600000092"))
  	print validate("RED", indicarRubro("MOREDE7201000023349"))
end

def test_pregunta2
  	@codigos = ["MOSISA1201600074232", "SIREDZ3200000003232", "MOINDT5200900023432", "VISISA5201500000023", "SMLITB3199600000092", "MOREDE7201000023349"]

  	print validate(3, contarSede('MO', @codigos))
  	print validate(1, contarSede('SI', @codigos))
  	print validate(1, contarSede('VI', @codigos))
  	print validate(1, contarSede('SM', @codigos))
end

def test_pregunta3
  	@codigos1 = ["MOSISA1201600074232", "SIREDZ3200000003232", "MOINDT5200900023432", "VISISA5201100000023", "SMLITB3199600000092", "MOREDE7201000023349"]
  	@codigos2 = ["MOSISA1200900074232", "SIREDZ3201400003232", "MOINDT5200400023432", "VISISA5201300000023", "SMLITB3199600000092", "MOREDE7201100023349"]
  	@codigos3 = ["MOSISA1201700074232", "SIREDZ3200900003232", "MOINDT5201700023432", "VISISA5201600000023", "SMLITB3199600000092", "MOREDE7200900023349"]
  	@codigos4 = ["MOSISA1201500074232", "SIREDZ3201700003232", "MOINDT5200900023432", "VISISA5200900000023", "SMLITB3199600000092", "MOREDE7201600023349"]

  	print validate(3, contarLibros(@codigos1))
  	print validate(3, contarLibros(@codigos2))
  	print validate(1, contarLibros(@codigos3))
  	print validate(2, contarLibros(@codigos4))
end

#----------------zona de test-----------------
def validate (expected, value)
	expected == value ? "." : "F"
end

def pregunta01
	puts "Test Examen Final - Pregunta 01"
	puts "-------------------------------"
	puts "Pregunta 1"
	test_pregunta1
	puts " "
	puts "Pregunta 2"
	test_pregunta2
	puts " "
	puts "Pregunta 3"
	test_pregunta3
	puts " "
end
pregunta01
