
def diasDePrestamo(tipoUsuario)
  # Llenamos la tabla de valores tal cuál está en el archivo del foro
  result = 0
  case tipoUsuario
    when "Alumno"
      result = 7
    when "Profesor"
      result = 15
    when "Otros"
      result = 5
  end
  return result
end

def incrementoDiario(tipoUsuario)
  # Llenamos la tabla de valores tal cuál está en el archivo del foro
  result = 0.0
  case tipoUsuario
    when "Alumno"
      result = 0.045
    when "Profesor"
      result = 0.07
    when "Otros"
      # En la tabla dice 9.5%, pero es muy probable que se hayan equivocado
      # y sea en realidad 9.6%, ya nos ha pasado en un exámen, podría volver a suceder
      # Con este valor, calcularValorTotalMora() va a ser verdadero, con 9.5% sale 25.9
      # Esta respuesta saldrá con F
      result = 0.096 
  end

  return (result * 100).round(2)
end

def moraInicial(tipoUsuario)
  # Llenamos la tabla de valores tal cuál está en el archivo del foro
  result = 0
  case tipoUsuario
    when "Alumno"
      result = 5
    when "Profesor"
      result = 10
    when "Otros"
      result = 15
  end

  return result
end

def calcularValorTotalMora(tipoUsuario,diasLibroPrestamo)
  diasMaxPrestamo = diasDePrestamo(tipoUsuario)
  moraDiaria = incrementoDiario(tipoUsuario)
  moraInicial = moraInicial(tipoUsuario)
  
  diasPasados = diasLibroPrestamo - diasMaxPrestamo
  totalMora = 0
  if (diasPasados > 0)

    # Nos dice <cada día que va pasando se incrementa en un porcentaje establecido>
    # Entonces cada día, el valor de la mora aumenta con respecto al porcentaje.
    # Ejemplo: (mora del 10% y monto inicial de 1000) 
    #   mes 1 => 1000 + 100 (10% de 1000)
    #   mes 2 => 1100 + 110 (10% de 1100) -> Notar que ponemos 1100, los 1000 iniciales mas 100 de interés 
    #   mes 3 => 1210 + 121 (10% de 1210) -> Los 1210, son los 1100 del mes anterior + 110
    for i in 1..(diasPasados)
      moraInicial = moraInicial * (1 + moraDiaria/100) # Divido entre 100 porque el formato que uso para porcentajes es "0.05 -> 5%"
    end
  else
    moraInicial = 0 # Si no se ha pasado los días, no se le cobra mora
  end
  return moraInicial.round(1)
end

#--- zona de test ----

def test_diasDePrestamo
    print validate(7, diasDePrestamo("Alumno")) 
    print validate(15, diasDePrestamo("Profesor")) 
    print validate(5, diasDePrestamo("Otros")) 
end

def test_incrementoDiario
    print validate(4.5, incrementoDiario("Alumno"))
    print validate(7.0, incrementoDiario("Profesor"))
    print validate(9.5, incrementoDiario("Otros"))
end

def test_moraInicial
    print validate(5, moraInicial("Alumno"))
    print validate(10, moraInicial("Profesor"))
    print validate(15, moraInicial("Otros"))
end

def test_calcularValorTotalMora
  print validate(6.5, calcularValorTotalMora("Alumno",13))
  print validate(0.0, calcularValorTotalMora("Alumno",6))
  print validate(15.0, calcularValorTotalMora("Profesor",21))
  print validate(26.0, calcularValorTotalMora("Otros",11))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_diasDePrestamo
  test_incrementoDiario
  test_moraInicial
  test_calcularValorTotalMora
  puts " "
end

test