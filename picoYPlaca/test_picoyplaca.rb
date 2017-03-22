# encoding UTF-8
require "test/unit"
require "./placa"
require "./picoYPlaca"

class PlacaTest <Test::Unit::TestCase

  def test_Placa
    numeroPlaca="XBT-520"
    fecha="12/12/2000"
    hora=3
    assert_not_nil "XBT-520, 12/12/2000, 3 ", Placa
    assert_not_nil "Placa: #{numeroPlaca}, Fecha de circulacion: #{fecha}, Hora: #{hora}"; respond_to? (:mostrar)

  end

  def test_picoPlaca
    assert_raise("RuntimeError") {
      crearPicoYPlaca("XBT-520","12/12/2000",3)
    }

  end
end