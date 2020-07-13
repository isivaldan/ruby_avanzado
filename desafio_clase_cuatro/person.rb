
class Person
  def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
  end
  def birthday
    @age += 1
  end
  def introduce
    "Mi nombre es #{@first_name} #{@last_name}."
  end
end
class Teacher<Person
  def introduce
    puts "Hola alumnos."
    super
  end
  def talk
    "Bienvenidos a la clase de programación con Ruby!"
  end
  
end
class Student<Person
  def introduce
    puts "Hola profesor."
    super
  end
  def talk
    "Aquí es la clase de programación con Ruby?"
  end
end
class Parent<Person
  def introduce
    puts "Hola. Soy uno de los apoderados."
    super
  end
  def talk
    "Aquí es la reunión de apoderados?"
  end
end
# def talk
#   if @type == "Student"
#     puts "Aquí es la clase de programación con Ruby?"
#   elsif @type == "Teacher"
#     puts "Bienvenidos a la clase de programación con Ruby!"
#   elsif @type == "Parent"
#     puts "Aquí es la reunión de apoderados?"
#   end
# end
# def introduce
#   if @type == "Student"
#     puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
#   elsif @type == "Teacher"
#     puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
#   elsif @type == "Parent"

#     puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #
#     {@last_name}."
#   end
# end
student = Student.new("Isi","ValDan",19,"estudiante")
parent = Parent.new("Alex","Oroz",25,"apoderado")
teacher =Teacher.new("Seba","Val",35,"profesor")

puts student.talk
puts student.introduce
puts parent.talk
puts parent.introduce
puts teacher.talk
puts teacher.introduce