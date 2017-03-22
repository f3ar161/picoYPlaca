# encoding UTF-8
class Placa
  attr_accessor :numeroPlaca, :fecha, :hora

  def initialize(numeroPlaca, fecha, hora)
    @numeroPlaca, @fecha, @hora = numeroPlaca, fecha, hora
  end

  def mostrar
    "Placa: #{numeroPlaca}, Fecha de circulacion: #{fecha}, Hora: #{hora}"
  end
end