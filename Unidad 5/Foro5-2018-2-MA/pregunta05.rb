def puntajePromedio(puntajes)
    suma = 0.0
    for i in 0..puntajes.size-1
        suma = suma + puntajes[i]
    end
    return ( suma / puntajes.size ).round(2)
end

def porcNacional(puntajes, nacionalidades)
    contador = 0
    for i in 0..nacionalidades.size-1
        n = nacionalidades[i]
        pntj = puntajes[i]
        if (n == 'N' && pntj == 4) # (pntj >= 3 || pntj <=5))
            contador = contador + 1
        end
    end
    puts porcentaje = ( contador * 100.0 / puntajes.size ).round(2)
    return porcentaje.to_s + "%"
end

def porcExtranjero(puntajes, nacionalidades)

end

#--- zona de test ----
@resultado1 = [4, 3, 5, 2, 3, 3, 4, 2, 5, 4, 3, 3]
@procedencia1 = ['N', 'E', 'N', 'N', 'E', 'E', 'N', 'E', 'E', 'N', 'E', 'N']

@resultado2 = [4, 1, 5, 3, 3, 4]
@procedencia2 = ['E', 'E', 'N', 'E', 'N', 'N']

@resultado3 = [1, 2, 3, 3, 2, 1, 5, 5, 4, 2, 1]
@procedencia3 = ['N', 'N', 'N', 'E', 'N', 'E', 'E', 'N', 'E', 'N', 'E']

def test_pregunta1
    print validate(3.42, puntajePromedio(@resultado1))
    print validate(3.33, puntajePromedio(@resultado2))
    print validate(2.64, puntajePromedio(@resultado3))
end

def test_pregunta2
    print validate('41.67%', porcNacional(@resultado1, @procedencia1)) 
    print validate('50.0%', porcNacional(@resultado2, @procedencia2)) 
    print validate('18.18%', porcNacional(@resultado3, @procedencia3)) 
end

def test_pregunta3
    print validate('8.33%', porcExtranjero(@resultado1, @procedencia1)) 
    print validate('16.67%', porcExtranjero(@resultado2, @procedencia2)) 
    print validate('18.18%', porcExtranjero(@resultado3, @procedencia3)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def pregunta02
    puts "Test Examen Final - Pregunta 02"
    puts "-------------------------------"
    puts "Pregunta 1"
    test_pregunta1
    puts " "
    puts "Pregunta 2"
    test_pregunta2
    puts " "
    puts "Pregunta 3"
    test_pregunta3
    puts " "
end
pregunta02