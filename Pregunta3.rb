def mayor(numero1 , numero2)
  # Esta es la forma simple de "if": variable = (expresion) ? true_case : false_case
  # Se lee algo así: Si la "expresion" es verdadera, entonces asignar "true_case", si no, false_case
  
  # Ejemplo: variable = 2 > 3 ? '2 es mayor' : '3 es mayor'
  # El valor de "variable" Será '3 es mayor', ya que la expresion 2 > 3 es falsa
  return numero1 > numero2 ? numero1 : numero2
end

def contadorMultiplos(numero1,numero2)
  numeroMayor = mayor(numero1,numero2) # usamos la funcion declarada arriba
  numeroMenor = (numero1 + numero2) - numeroMayor # Es una forma de obtener el menor numero.
  # Una forma de obtener la cantidad de multiplos de un numero
  # es poner un "for i in 1..numeroMayor" y ver que numeros son divisibles por "numeroMenor"
  # sin embargo, la división entera también nos revela cuántos múltiplos existen del "1 al numeroMayor"
  return numeroMayor / numeroMenor
end	

#--- zona de test ----

def test_mayor
    print validate(9, mayor(9,4)) 
    print validate(23, mayor(23,5))
    print validate(144, mayor(144,6))
    print validate(256, mayor(177,256))
end

def test_contadorMultiplos
    print validate(6, contadorMultiplos(124,20))
	print validate(5, contadorMultiplos(4,20))
	print validate(5, contadorMultiplos(100,20))
	print validate(28, contadorMultiplos(9,256))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts "---test_mayor--"
  test_mayor
  puts ""
  puts "---Multiplos---"
  test_contadorMultiplos
  puts " "
end

test