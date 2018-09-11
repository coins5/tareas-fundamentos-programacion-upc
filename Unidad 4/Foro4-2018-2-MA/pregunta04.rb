def calculaSueldoNanhos(n,tipoTrabajador,sueldo)
    # Es importante no manipular directamente la variable "nuevoMonto" mejor la guardamos en otra variable
    sueldoFinal = sueldo
    for i in 1..n

        porcentaje_aumento = 0
        if (tipoTrabajador == "e")
            porcentaje_aumento = 0.08
        else # g
            porcentaje_aumento = 0.14
        end
        
        if (i % 4 == 0)
            porcentaje_aumento = porcentaje_aumento + ((n/4) * 0.04)
        end

        sueldoFinal = sueldoFinal * (1 + porcentaje_aumento)
    end
    return sueldoFinal.round(2)
end

def calculoPorcentajeAumento(n,tipoTrabajador,sueldo)
    # solo utilizamos la primera funcion que resolvimos para hacer esta
    sueldoFinal = calculaSueldoNanhos(n, tipoTrabajador, sueldo)
    prc = ((sueldoFinal / sueldo) - 1) * 100
    return prc.round(2)
end

def calculoSumaSueldoGerenteyEmpleado(n,sueldoGerente,sueldoEmpleado)
    # solo utilizamos la primera funcion que resolvimos para hacer esta
    nuevoSueldoGerente = calculaSueldoNanhos(n, "g", sueldoGerente)
    nuevoSueldoEmpleado = calculaSueldoNanhos(n, "e", sueldoEmpleado)
    return nuevoSueldoGerente + nuevoSueldoEmpleado
end

#--- zona de test ----

def test_calculaSueldoNanhos
    print validate(5244.67, calculaSueldoNanhos(4,"g",3000))
    print validate(6815.97, calculaSueldoNanhos(6,"g",3000))
    print validate(1259.71, calculaSueldoNanhos(3,"e",1000))
    print validate(1645.65, calculaSueldoNanhos(6,"e",1000))
end

def test_calculoPorcentajeAumento
    print validate(74.82, calculoPorcentajeAumento(4,"g",3000))
    print validate(127.20, calculoPorcentajeAumento(6,"g",3000))
    print validate(25.97, calculoPorcentajeAumento(3,"e",1000))
    print validate(64.57, calculoPorcentajeAumento(6,"e",1000))    
end

def test_calculoSumaSueldoGerenteyEmpleado
    print validate(6655.55, calculoSumaSueldoGerenteyEmpleado(4,3000,1000))
    print validate(8461.62, calculoSumaSueldoGerenteyEmpleado(6,3000,1000))
end
    
def validate (expected, value)
    expected == value ? "." : "F"
end

def test
puts "Test de prueba del programa"
puts "---------------------------"
test_calculaSueldoNanhos
puts ""
test_calculoPorcentajeAumento
puts ""
test_calculoSumaSueldoGerenteyEmpleado
puts " "
end
test
