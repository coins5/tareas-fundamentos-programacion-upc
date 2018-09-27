def pregunta1(codigo)
  jugadores = codigo[8..10]
  return jugadores.to_i
end
    
def pregunta2(sede, codigos)
	cont = 0

	for i in 0..codigos.size-1
		codigo = codigos[i]
		sedeAlbum = codigo[0..1]

		if sedeAlbum == sede
			cont = cont + 1
		end
	end

	return cont
end    

def pregunta3(sede, codigos)
	codAlumno = ''
	maximo = 0

	for i in 0..codigos.size-1
		codigoInd = codigos[i]
		sedeInd = codigoInd[0..1]
		if sedeInd == sede
			cantFiguras = codigoInd[2..3].to_i + codigoInd[4..5].to_i + codigoInd[6..7].to_i + codigoInd[8..10].to_i
			if cantFiguras > maximo
				codAlumno = codigoInd[11..18]
				maximo = cantFiguras
			end
		end
	end

	return codAlumno
end

def pregunta4(codigos)
	cont = 0

	for i in 0..codigos.size-1
		codigoInd = codigos[i]
		cantFiguras = codigoInd[2..3].to_i + codigoInd[4..5].to_i + codigoInd[6..7].to_i + codigoInd[8..10].to_i
		if cantFiguras < 250
			cont = cont + 1
		end
	end

	return cont
end
#----------Zona de Test------------------

def test_pregunta1
  	print validate(145, pregunta1("MO00100614520170013"))
  	print validate(372, pregunta1("SI12011537220140012"))
  	print validate(608, pregunta1("SM05122560820162573"))
  	print validate(471, pregunta1("VI01062947120127341"))
  	print validate(507, pregunta1("SM02053250720180312"))
  	print validate(228, pregunta1("MO08041922820169815"))
end

def test_pregunta2
  	@codigos = ["MO00100614520170013", "SI12011537220140012", "SM05122560820162573", "VI01062947120127341", "SM02053250720180312", "MO08041922820169815"]

  	print validate(2, pregunta2('MO', @codigos))
  	print validate(1, pregunta2('SI', @codigos))
  	print validate(1, pregunta2('VI', @codigos))
  	print validate(2, pregunta2('SM', @codigos))
end

def test_pregunta3
  	@codigos1 = ["MO00100614520170013", "SI12011519220140012", "SM05122514520162573", "VI01061917120127351", "SM02053210220180312", "MO08041908820169815"]
  	@codigos2 = ["MO05041634020153511", "SI11072521820121212", "SM09041237120162773", "VI06092537220127241", "SM12121046120180412", "MO02043212820179815"]
  	@codigos3 = ["MO11071212820133413", "SI05110531520100315", "SM12112129920162523", "VI09122247120121341", "SM04081412720181312", "MO12072642820168815"]
  	@codigos4 = ["MO03112141120180012", "SI13041651220151212", "SM00003212620161573", "VI11012842120117341", "SM09062530720180322", "MO01112323820169915"]

  	print validate('20170013', pregunta3('MO', @codigos1))
  	print validate('20121212', pregunta3('SI', @codigos2))
  	print validate('20162523', pregunta3('SM', @codigos3))
  	print validate('20117341', pregunta3('VI', @codigos4))
end

def test_pregunta4
  	@codigos1 = ["MO00100614520170013", "SI12011519220140012", "SM05122514520162573", "VI01061917120127351", "SM02053210220180312", "MO08041908820169815"]
  	@codigos2 = ["MO05041634020153511", "SI11072521820121212", "SM09041237120162773", "VI06092537220127241", "SM12121046120180412", "MO02043212820179815"]
  	@codigos3 = ["MO11071212820133413", "SI05110531520100315", "SM12112129920162523", "VI09122247120121341", "SM04081412720181312", "MO12072642820168815"]
  	@codigos4 = ["MO03112141120180012", "SI13041651220151212", "SM00003212620161573", "VI11012842120117341", "SM09062530720180322", "MO01112323820169915"]

  	print validate(6, pregunta4(@codigos1))
  	print validate(1, pregunta4(@codigos2))
  	print validate(2, pregunta4(@codigos3))
  	print validate(1, pregunta4(@codigos4))
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
	puts "Pregunta 4"
	test_pregunta4
	puts " "
end
pregunta01
