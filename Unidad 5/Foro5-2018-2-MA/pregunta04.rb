#encoding:UTF-8
def pregunta1_1(puntaje)

end

def pregunta1_2(sexo, edad)

end

def pregunta1_3(sexo, puntaje)

end

def pregunta1_4(sexo, edad, puntaje)

end

#--- zona de test ----
def test_Pregunta1
  	print validate(6.17, pregunta1_1(@puntajes))
  	print validate(47.5, pregunta1_2(@sexos, @edades))
  	print validate(6.5, pregunta1_3(@sexos, @puntajes))
  	print validate(5.0, pregunta1_4(@sexos, @edades, @puntajes))
end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
	@sexos = ['M', 'F', 'F', 'M', 'M', 'M']
	@edades = [45, 25, 36, 32, 50, 63]
	@puntajes = [7, 8, 5, 5, 4, 8]

  	puts "Test de prueba"
  	puts "------------------"
  	test_Pregunta1  
  	puts " "

end
test