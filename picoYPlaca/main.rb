# encoding UTF-8
require "./placa"
require "./placaFactory"
require "./picoYPlaca"

class Main
  attr_accessor :numeroPlaca, :fechaCirculacion, :horaCirculacion
  def initialize (numeroPlaca, fechaCirculacion, horaCirculacion)
    @numeroPlaca, @fechaCirculacion, @horaCirculacion = numeroPlaca, fechaCirculacion, horaCirculacion
  end
end

#input for strings
def inputStr(*args)
  print(*args)
  gets.chomp
end

# input for numbers
def inputNum(*args)
  print(*args)
  input = gets.chomp
  klass = eval(input).class
  raise NameError unless [Fixnum, Float].include?(klass)
  if input.to_f>24.00
    puts "(Hora de circulación) cant be >24"
  end
  fechaCirculacion= input.to_f
rescue NameError
  puts "(Hora de circulación) must be number"
end

#sector
picoYPlaca = PicoYPlaca.instance
picoYPlaca.nombre="Quito"
#gets
numeroPlaca = inputStr "Ingrese la placa (XXX-####): "
fechaCirculacion = inputStr "Ingrese la fecha de circulacion (dd/mm/yyyy): "
horaCirculacion = inputNum "Ingrese la hora de circulación (24H format): "

#print
picoYPlaca.crearPicoYPlaca("#{numeroPlaca}", "#{fechaCirculacion}", "#{horaCirculacion}")
puts picoYPlaca.listar
picoYPlaca.verificador

