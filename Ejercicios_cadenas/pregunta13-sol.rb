def validarparrafo(parrafo1, parrafo2)
	return parrafo1.split(" ").length == parrafo2.split(" ").length
end

def validarcitas(parrafo)
	(parrafo.split(" ").select { |p| p.length > 6 }).length
end

def validartexto(parrafo)
  vocales=0.0
  consonantes=0.0
  for i in 0..parrafo.size-1
    if parrafo[i]=='a' or parrafo[i]=='A' or
       parrafo[i]=='e' or parrafo[i]=='E' or
       parrafo[i]=='i' or parrafo[i]=='I' or
       parrafo[i]=='o' or parrafo[i]=='O' or
       parrafo[i]=='u' or parrafo[i]=='U' or
       vocales+=1
    else
       consonantes+=1
    end
  end
  porcentajevocales=(vocales/parrafo.size * 100).round(2)
  porcentajeconsonantes=(100.0-porcentajevocales).round(2)
  return [porcentajevocales,porcentajeconsonantes]
end

#--- zona de test ----

def test_validarparrafo
  print validate(false,validarparrafo(@parrafo1,@parrafo2))
  print validate(true,validarparrafo(@parrafo3,@parrafo4))
  print validate(true,validarparrafo(@parrafo5,@parrafo6))

end

def test_validarcitas
  print validate(4,validarcitas(@parrafo1))
  print validate(6,validarcitas(@parrafo2))
  print validate(7,validarcitas(@parrafo7))
end

def test_validartexto
   print validate([69.91,30.09],validartexto(@parrafo3))
   print validate([68.57,31.43],validartexto(@parrafo4))
   print validate([55.81,44.19],validartexto(@parrafo5))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  
  @parrafo1 = "Esta es una prueba de plagio para revisar si la cantidad de palabras de uno y otro texto son similares"
  @parrafo2 = "Esta es otra prueba a realizar para determinar si la cantidad de palabras puede ser en algun momento similar"
  @parrafo3 = "Para poder comparar cantidad de palabrar, se debe
               comparar si fueron escritas por la misma persona"
  @parrafo4 = "Pero si no fueron escritas por la misma persona
               entonces puede ser valido el texto escrito"
  @parrafo5 = "Pero si alcazamos algo parecido a una copia"
  @parrafo6 = "Puede haberse dado dicha copia porque asi es"

  @parrafo7 = "De acuerdo a [Martillejo 2016] podemos determinar que existe un marcado incremento de los precios."

  puts "---------------------------"
  test_validarparrafo
  puts " "
  test_validarcitas
  puts " "
  test_validartexto
  puts " "
end
test