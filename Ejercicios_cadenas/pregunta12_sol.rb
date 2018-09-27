def calcularresultadoVeredicto(pregunta1)
  contarsi=0.0
  contarno=0.0
  contarnn=0.0
  for i in 0..pregunta1.size-1
      if pregunta1[i]=="S"
          contarsi+=1         
      end
      if pregunta1[i]=="N"
          contarno+=1         
      end
      if pregunta1[i]=="X"
          contarnn+=1         
      end
  end	

  porcentajesi=contarsi/pregunta1.size * 100
  porcentajeno=contarno/pregunta1.size * 100
  porcentajenn=contarnn/pregunta1.size * 100

  retorno=[porcentajesi,porcentajeno,porcentajenn]
  return retorno
end


def determinaraceptacion(pregunta2)
  contar=0.0
  for i in 0..pregunta2.size-1
      if pregunta2[i]!="0"
          contar=contar+1      
      end
  end	
  porcentaje=contar/pregunta2.size*100
  return porcentaje.round(2)
end

#--- zona de test ----

def test_calcularresultadoVeredicto
	respuestas1=["S","S","X","N","N","S","N","X","S","S"]
	respuestas2=["N","N","N","X","N","S","N","X","N","N"]
	respuestas3=["X","S","X","N","X","X","X","S","X","S"]
	
    print validate([50.0,30.0,20.0], calcularresultadoVeredicto(respuestas1)) 
    print validate([10.00,70.00,20.00], calcularresultadoVeredicto(respuestas2)) 
    print validate([30.0,10.0,60.0], calcularresultadoVeredicto(respuestas3)) 
end

def test_determinaraceptacion
	respuestas1=["3","1","2","2","3","0","0","2","1","1"]
	respuestas2=["3","3","3","1","2","0","0","0","2","1"]
	respuestas3=["1","2","0","0","0","3","0","3","0","2"]

  print validate(80.0,determinaraceptacion(respuestas1)) 
  print validate(70.0, determinaraceptacion(respuestas2)) 
  print validate(50.0, determinaraceptacion(respuestas3)) 
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