def calcularresultadoVeredicto(pregunta1)
  contadorS = 0.0
  contadorN = 0.0
  contadorX = 0.0

  ganador = ""
  for i in 0..pregunta1.size-1
    case (pregunta1[i])
      when "S"
        contadorS = contadorS + 1
      when "N"
        contadorN = contadorN + 1
      when "X"
        contadorX = contadorX + 1 
    end
  end

  encontrarMayor = 0
  if (contadorS > contadorN)
    encontrarMayor = contadorS
    ganador = "SI"
  else
    encontrarMayor = contadorN
    ganador = "NO"
  end
  if (contadorX > encontrarMayor)
    ganador = "NS"
    encontrarMayor = contadorX
  end

  array = [
    contadorS*100/pregunta1.size,
    contadorN*100/pregunta1.size,
    contadorX*100/pregunta1.size,
    ganador
  ]

  return array
end

def determinaraceptacion(pregunta2)
  # La comprobación número 3 fallará, el porcentaje correcto debe ser 80
  contadorNS = 0.0
  for i in 0..pregunta2.size-1
    if (pregunta2[i] == "0")
      contadorNS = contadorNS + 1
    end
  end
  puts result = (100.0*(pregunta2.size - contadorNS)/pregunta2.size).round(2)
  return result
end

#--- zona de test ----

def test_calcularresultadoVeredicto
	respuestas1=["S","S","X","N","N","S","N","X","S","S"]
	respuestas2=["N","N","N","X","N","S","N","X","N","N"]
	respuestas3=["X","S","X","N","X","X","X","S","X","S"]
	
    print validate([50.0,30.0,20.0,"SI"], calcularresultadoVeredicto(respuestas1)) 
    print validate([10.00,70.00,20.00,"NO"], calcularresultadoVeredicto(respuestas2)) 
    print validate([30.0,10.0,60.0,"NS"], calcularresultadoVeredicto(respuestas3)) 
end

def test_determinaraceptacion
	respuestas1=["3","1","2","2","3","0","0","2","1","1"]
	respuestas2=["3","3","3","1","2","0","0","0","2","1"]
	respuestas3=["1","2","3","0","0","3","2","3","3","2"]

  print validate(80.0,determinaraceptacion(respuestas1)) 
  print validate(70.0, determinaraceptacion(respuestas2)) 
  print validate(60.0, determinaraceptacion(respuestas3)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularresultadoVeredicto
  puts " "
  test_determinaraceptacion
  puts " "

end
test