# encoding: UTF-8
class PlacaFactory
  def self.crearPlaca(numeroPlaca, fecha, hora)
    Placa.new(numeroPlaca, fecha, hora)
  end
end