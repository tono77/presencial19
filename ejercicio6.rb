#1. Crear una clase Student con un método constructor que recibirá 3 argumentos (nombre, nota1 y nota2).
#Cada una de las notas tendrá, por defecto, valor 4 en el caso que no se ingrese una nota al momento de crear una nueva instancia.

#2. La clase también debe tener una variable de clase llamada quantity la que será iniciada en 0 y se incrementará en 1 cada vez
#que se instancie un nuevo objeto.

#3. Crear un módulo Test con un método result. Este método debe calcular el promedio de 2 notas y si ese promedio es superior a 4
#entregrar un mensaje que debe decir "Estudiante aprobado". En caso contrario, enviará un mensaje "Estudiante reprobado".

#4. Crear un segundo módulo Attendance con un método student_quantity que permita mostrar en pantalla la cantidad de estudiantes creados.

#Añadir a la clase Student el módulo Test como métodos de instancia y el módulo Attendance como métodos de clase.

#5. Crear 10 objetos de la clase Student y utilizar los métodos creados para saber si los alumnos están aprobados o no y,
#finalmente, mostrar el total de alumnos creados.

module Test
  def result()
    (@nota1 + @nota2)/2 >= 4 ? "Estudiante Aprobado" : "Estudiante Reprobado"
  end
end

module Attendance
  def student_quantity(quantity)
    puts "El total de alumnos es #{quantity}"
  end
end

class Student
  include Test
  extend Attendance

  @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity =+ 1
  end

end

10.times do
  student = Student.new('Alumno')
  puts student.result
end

puts "#{Student.student_quantity}"
