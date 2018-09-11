#encoding:UTF-8
def factorial(num)
  # EL factorial de un numero (n!) es:
  # 1 x 2 x 3 ... x n
  # Ejemplo: 5!  => 1 x 2 x 3 x 4 x 5 = 120
  # Ejemplo: 3!  => 1 x 2 x 3 = 6

  result = 1
  for i in 1..num # Bucle "for", haremos que vaya de 1 a "num" (1, 2, 3, 4, ..., num)
    result = result * i # Genera un factorial así: 1 x 2 x 3 ... x num
  end

  return result
end

def calculaE(x,n)
  result = 1
  for i in 1..n # Bucle "for", haremos que vaya de 1 a "n" (1, 2, 3, 4, ..., n)
    result = result + (x**i / factorial(i).to_f) # Es un procedimiento muy parecido al declardo arriba
  end
  return result.round(2)
end

#--- zona de test ----

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_factorial
    print validate(120,factorial(5))
    print validate(5040,factorial(7))
    print validate(6,factorial(3))
    print validate(1,factorial(0))
end

def test_calculaE
    print validate(6.33,calculaE(2,3))
    print validate(7.27,calculaE(2,5))
    print validate(1.0,calculaE(0,6))
    print validate(8.0,calculaE(7,1))
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_factorial
  test_calculaE
  puts " "
end
test