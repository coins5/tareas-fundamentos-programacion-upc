
def calcularTasa(tipo,monto)
  # Llenamos la tabla de valores tal cuál está en el archivo del foro
  tasa = 0
  if (tipo == "persona")
    if (monto <= 1000)
      tasa = 0.04
    elsif monto <= 5000
      tasa = 0.06
    elsif monto <= 10000
      tasa = 0.08
    else # monto > 10,000
      tasa = 0.1
    end
  else # empresa
    if (monto <= 10000)
      tasa = 0.01
    elsif monto <= 50000
      tasa = 0.03
    elsif monto <= 100000
      tasa = 0.04
    else # monto > 100,000
      tasa = 0.06
    end
  end
  return tasa
end

def calcularTotal(tipo,monto,tiempo)
  # Es importante no manipular directamente la variable "nuevoMonto" mejor la guardamos en otra variable
  nuevoMonto = monto
  valorDeTasa = calcularTasa(tipo, monto)
  # Nos dice que el interés es capitalizable mes a mes
  # Entonces cada mes, el valor del monto total a pagar aumenta con respecto a la tasa.
  # Ejemplo: (tasa del 10% y prestamos de 1000) 
  #   mes 1 => 1000 + 100 (10% de 1000)
  #   mes 2 => 1100 + 110 (10% de 1100) -> Notar que ponemos 1100, los 1000 iniciales mas 100 de interés 
  #   mes 3 => 1210 + 121 (10% de 1210) -> Los 1210, son los 1100 del mes anterior + 110

  for i in 1..tiempo
    nuevoMonto = nuevoMonto * (1 + valorDeTasa)
  end
  return (nuevoMonto - monto).round(2) # Solo nos piden el interés ganado, así que descontamos el monto inicial
end


#--- zona de test ----

def test_calcularTasa
    print validate(0.01, calcularTasa("empresa",10000)) 
    print validate(0.03, calcularTasa("empresa",50000)) 
    print validate(0.04, calcularTasa("empresa",100000)) 
    print validate(0.06, calcularTasa("empresa",200000)) 
    print validate(0.04, calcularTasa("persona",1000)) 
    print validate(0.06, calcularTasa("persona",5000)) 
    print validate(0.08, calcularTasa("persona",10000)) 
    print validate(0.10, calcularTasa("persona",20000))     
end

def test_calcularTotal
    print validate(124.86, calcularTotal("persona",1000,3)) 
    print validate(2092.60, calcularTotal("persona",5000,6)) 
    print validate(15181.70, calcularTotal("persona",10000,12)) 
    print validate(42768.57, calcularTotal("persona",20000,12)) 
    print validate(303.01, calcularTotal("empresa",10000,3)) 
    print validate(9702.61, calcularTotal("empresa",50000,6)) 
    print validate(60103.22, calcularTotal("empresa",100000,12)) 
    print validate(202439.29, calcularTotal("empresa",200000,12)) 

end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularTasa
  puts " "
  test_calcularTotal
  puts " "
end
test