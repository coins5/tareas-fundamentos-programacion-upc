#encoding:UTF-8

=begin
a)  Indicar que piloto recorrió el tramo en el menor tiempo  (2.5 puntos)
=end
def piloto_ganador(pilotos, velocidades, distancia)
  pos = 0
  menor = 9999

  for i in 0..velocidades.size-1
    t = distancia.to_f/velocidades[i]
    if t < menor
      menor = t
      pos = i
    end
  end

  return pilotos[pos]

end

=begin
b)  Indicar el piloto con la mayor cantidad de vocales en su nombre (2.5 puntos)
=end
def vocal_en_nombre_piloto(pilotos) 
  pos = 0
  mayor = 0

  for i in 0..pilotos.size-1
    nombre = pilotos[i].downcase

    contador = 0
    for j in 0..nombre.size-1
      letra = nombre[j]
      if letra == 'a' || letra == 'e' || letra == 'i' || letra =='o' || letra =='u'
        contador = contador + 1
      end
    end

    if contador > mayor
      mayor = contador
      pos = i
    end
  end

  return pilotos[pos]

end

=begin
c)  Indicar el vehículo con el mayor costo de combustible 
así como los costos de combustible asociados a cada vehículo (2.5 puntos)
=end
def costos_de_combustible(vehiculos, capacidades)
  precio = 20
  rpta = []

  # Calcular costos
  for i in 0..capacidades.size-1
    costo = capacidades[i] * precio
    rpta.push(costo)
  end

  # Buscar al de mayor costo
  mayor = 0
  pos = 0
  for i in 0..rpta.size-1
    if rpta[i] > mayor
      mayor = rpta[i]
      pos = i
    end
  end

  # agregar el nombre
  rpta.push( vehiculos[pos] )
  return rpta
end
  
=begin
d)  Indicar la letra que más se repite en las marcas de los vehículos. 
No considerar los espacios en blanco
Trabajar  las letras como minúsculas. (2.5 puntos)
=end
def letra_en_nombre_vehiculo(vehiculos,letras)
  cont = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

  for i in 0..vehiculos.size-1
    nombre = vehiculos[i].downcase
    for j in 0..nombre.size-1
      # No considerar los espacios en blanco
      if nombre[j] != ' '
        # Buscar la posicion de la letra en el arreglo de letras
        posIndex = letras.index(nombre[j] )
        # Con la posicion obtenida, contar 
        cont[posIndex] = cont[posIndex] + 1      
      end
    end
  end

  # Buscar el mayor contador
  mayor = 0
  pos = 0
  for i in 0..cont.size-1
    if cont[i] > mayor
      mayor = cont[i]
      pos = i
    end
  end

  return letras[pos]

end


#--- zona de test ----
def test_piloto_ganador
    print validate('Carlos Sainz', piloto_ganador($p1, $v1, 300))
    print validate('Esapekka Lappi', piloto_ganador($p2, $v2, 400))
    print validate('Meteoro', piloto_ganador($p3, $v3, 200))
end


def test_vocal_en_nombre_piloto
    print validate('Juha Kankkuunen', vocal_en_nombre_piloto($p1)) 
    print validate('Joaquim Moutinho', vocal_en_nombre_piloto($p2)) 
    print validate('Toni Gardemeister', vocal_en_nombre_piloto($p3)) 
end

def test_costos_de_combustible
    print validate( [300,240,290.0,260,260,260,"Citroen C4 WRC"] , costos_de_combustible($a1,$c1))
    print validate( [300,240,290.0,260,260,260, "Citroen DS3 WRC"] , costos_de_combustible($a2,$c2))
    print validate( [300,240,290.0,260,260,260, "Toyota Yaris WRC"] , costos_de_combustible($a3,$c3))
end

def test_letra_en_nombre_vehiculo
    print validate('c', letra_en_nombre_vehiculo($a1,$letras) )
    print validate('r', letra_en_nombre_vehiculo($a2,$letras) )
    print validate('c', letra_en_nombre_vehiculo($a3,$letras) )
end


def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
  	puts "Test de prueba Pregunta X"
  	puts "--------------------------"
    test_piloto_ganador  
  	puts " "
    test_vocal_en_nombre_piloto  
  	puts " "
    test_costos_de_combustible  
    puts " "
    test_letra_en_nombre_vehiculo
end

$letras=['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

$p1 = ['Juha Kankkuunen','Tommi Makinen','Walter Rorhl','Carlos Sainz','Hannu Mikkola','Fabrizia Pons' ]
$a1 = ['Citroen C4 WRC','Ford Escort WRC','Hyundai Accent WRC','Mitsubishi Lancer WRC','Subaru Impreza WRC','Toyota Corolla WRC']
$c1 = [15,12,14.5,13,13,13]
$v1 = [230,232,228,233,230,232]

$p2 = ['Alain Oreille','Kyosti Hamalainen','Joaquim Moutinho','Esapekka Lappi','Josef Haider']
$a2 = ['Citroen DS3 WRC','Ford Fiesta RS WRC','Mini John Cooper Works WRC','Volkswagen Polo R WRC','Hyundai i20 WRC']
$c2 = [15,12,14.5,13,13,13]
$v2 = [231,232,227,234,230,232]

$p3 = ['Chris Atkinson','Henning Solberg','Toni Gardemeister','Meteoro']
$a3 = ['Toyota Yaris WRC','Hyundai i20 Coupe WRC','Citroen C3 WRC','Ford Fiesta WRC']
$c3 = [15,12,14.5,13,13,13]
$v3 = [230,231,229,235,224,231]


test


