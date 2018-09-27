def cantidad_habitaciones(estados,tipo)

end
       
def calcular_desocupadas(tipo,estado)

end

def determinar_oferta(habitaciones,precio,habitacion,descuento,dias)

end

#----------Zona de Test------------------

@habitaciones = ["101","102","201","202","301","302","401","402"]
@tipo = ["Junior","Junior","Premium","VIP","Premium","Junior","VIP","Premium"]
@precio = [345.0,345.0,450.0,500.0,450.0,345.0,500.0,450.0]

@estado1 = ["D","O","R","O","O","R","D","D"]
@estado2 = ["D","O","R","D","D","D","O","R"]
@estado3 = ["O","O","O","O","O","R","O","D"]


def test_cantidad_habitaciones
  print validate(3, cantidad_habitaciones(@estado1,"D"))
  print validate(2, cantidad_habitaciones(@estado2,"O"))
  print validate(1, cantidad_habitaciones(@estado3,"R"))
end
    
 def test_calcular_desocupadas
  print validate(12.5, calcular_desocupadas(@tipo,@estado1))
  print validate(25.0, calcular_desocupadas(@tipo,@estado2))
  print validate(0.0, calcular_desocupadas(@tipo,@estado3))
 end   

def test_determinar_oferta
    print validate(1242.0, determinar_oferta(@habitaciones,@precio,"302",10.0,4))
    print validate(2200.0, determinar_oferta(@habitaciones,@precio,"202",12.0,5))
    print validate(1147.50, determinar_oferta(@habitaciones,@precio,"402",15.0,3))
    print validate(0.0, determinar_oferta(@habitaciones,@precio,"111",20.0,7))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_cantidad_habitaciones
  puts " "
  test_calcular_desocupadas
  puts " "
  test_determinar_oferta
  puts " "
end

test
