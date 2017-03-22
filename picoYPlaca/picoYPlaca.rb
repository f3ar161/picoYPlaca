# encoding: UTF-8
require 'singleton'
class PicoYPlaca
  include Singleton
  attr_accessor :nombre, :placas

  def initialize
    @nombre = nil
    @placas = Array.new
  end

  def crearPicoYPlaca(numeroPlaca, fecha, hora)
    placas.push(PlacaFactory.crearPlaca(numeroPlaca, fecha, hora))
  end

  def listar
    msj= "Sector: #{nombre} \n"
    @placas.each do |placa|
      msj += placa.mostrar + "\n"
    end
    msj+="\n"
  end

  def verificador
    informacion ="Restricción en la mañana de: 07H00 a 9H30, en la tarde de: 16H00 a 19H30"
    horario="Mayor informacion URL: http://www.amt.gob.ec/index.php/pico-placa-homepage.html"
    msj = "Información de circulación:"
    puts msj
    @placas.each do |placa|
      case
        when (placa.numeroPlaca[-1, 1]=='1') || (placa.numeroPlaca[-1, 1] =='2')
          if (placa.hora.to_f > 24)
            puts ("Vuelva a ingresar la hora en el formato de 24 Horas")
            break
          end
          if (placa.hora.to_f >= 1.00) && (placa.hora.to_f < 7.0)
            puts "Puede circular el día lunes, pero considere lo siguiente: "
            puts "#{informacion}"
            puts "#{horario}"
          else
            if (placa.hora.to_f > 9.30) && (placa.hora.to_f < 16.0)
              puts "Puede circular el día lunes, pero considere lo siguiente: "
              puts "#{informacion}"
              puts "#{horario}"
            else
              if (placa.hora.to_f > 19.30) && (placa.hora.to_f < 25)
                puts "Puede circular el día lunes, pero considere lo siguiente: "
                puts "#{informacion}"
                puts "#{horario}"
              else
                puts "No puede circular el día lunes tenga en cuenta lo siguiente "
                puts "#{informacion}"
                puts "#{horario}"
              end
            end
          end
          break
        when placa.numeroPlaca[-1, 1]=='3' || placa.numeroPlaca[-1, 1]=='4'
          if (placa.hora.to_f > 24)
            puts ("Vuelva a ingresar la hora en el formato de 24 Horas")
            break
          end
          if (placa.hora.to_f >= 1.00) && (placa.hora.to_f < 7.0)
            puts "Puede circular el día martes, pero considere lo siguiente: "
            puts "#{informacion}"
            puts "#{horario}"
          else
            if (placa.hora.to_f > 9.30) && (placa.hora.to_f < 16.0)
              puts "Puede circular el día martes, pero considere lo siguiente: "
              puts "#{informacion}"
              puts "#{horario}"
            else
              if (placa.hora.to_f > 19.30) && (placa.hora.to_f < 25)
                puts "Puede circular el día martes, pero considere lo siguiente: "
                puts "#{informacion}"
                puts "#{horario}"
              else
                puts "No puede circular el día martes tenga en cuenta lo siguiente "
                puts "#{informacion}"
                puts "#{horario}"
              end
            end
          end
          break
        when placa.numeroPlaca[-1, 1]=='5' || placa.numeroPlaca[-1, 1]=='6'
          if (placa.hora.to_f > 24)
            puts ("Vuelva a ingresar la hora en el formato de 24 Horas")
            break
          end
          if (placa.hora.to_f >= 1.00) && (placa.hora.to_f < 7.0)
            puts "Puede circular el día miercoles, pero considere lo siguiente: "
            puts "#{informacion}"
            puts "#{horario}"
          else
            if (placa.hora.to_f > 9.30) && (placa.hora.to_f < 16.0)
              puts "Puede circular el día miercoles, pero considere lo siguiente: "
              puts "#{informacion}"
              puts "#{horario}"
            else
              if (placa.hora.to_f > 19.30) && (placa.hora.to_f < 25)
                puts "Puede circular el día miercoles, pero considere lo siguiente: "
                puts "#{informacion}"
                puts "#{horario}"
              else
                puts "No puede circular el día miercoles tenga en cuenta lo siguiente "
                puts "#{informacion}"
                puts "#{horario}"
              end
            end
          end
          break
        when placa.numeroPlaca[-1, 1]=='7' || placa.numeroPlaca[-1, 1]=='8'
          if (placa.hora.to_f > 24)
            puts ("Vuelva a ingresar la hora en el formato de 24 Horas")
            break
          end
          if (placa.hora.to_f >= 1.00) && (placa.hora.to_f < 7.0)
            puts "Puede circular el día jueves, pero considere lo siguiente: "
            puts "#{informacion}"
            puts "#{horario}"
          else
            if (placa.hora.to_f > 9.30) && (placa.hora.to_f < 16.0)
              puts "Puede circular el día jueves, pero considere lo siguiente: "
              puts "#{informacion}"
              puts "#{horario}"
            else
              if (placa.hora.to_f > 19.30) && (placa.hora.to_f < 25)
                puts "Puede circular el día jueves, pero considere lo siguiente: "
                puts "#{informacion}"
                puts "#{horario}"
              else
                puts "No puede circular el día jueves tenga en cuenta lo siguiente "
                puts "#{informacion}"
                puts "#{horario}"
              end
            end
          end
          break
        when placa.numeroPlaca[-1, 1]=='9' || placa.numeroPlaca[-1, 1]=='0'
          if (placa.hora.to_f > 24)
            puts ("Vuelva a ingresar la hora en el formato de 24 Horas")
            break
          end
          if (placa.hora.to_f >= 1.00) && (placa.hora.to_f < 7.0)
            puts "Puede circular el día viernes, pero considere lo siguiente: "
            puts "#{informacion}"
            puts "#{horario}"
          else
            if (placa.hora.to_f > 9.30) && (placa.hora.to_f < 16.0)
              puts "Puede circular el día viernes, pero considere lo siguiente: "
              puts "#{informacion}"
              puts "#{horario}"
            else
              if (placa.hora.to_f > 19.30) && (placa.hora.to_f < 25)
                puts "Puede circular el día viernes, pero considere lo siguiente: "
                puts "#{informacion}"
                puts "#{horario}"
              else
                puts "No puede circular el día viernes tenga en cuenta lo siguiente "
                puts "#{informacion}"
                puts "#{horario}"
              end
            end
          end
          break
      end
    end
  end
end


