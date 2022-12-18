require "test_helper"

class PublicationTest < ActiveSupport::TestCase
  test "no se debería guardar con nombre invalido" do
    publications(:publication_invalido_uno, :publication_invalido_dos, :publication_invalido_tres,
      :publication_invalido_cuatro).each do |d|
      res = d.valid?
      assert_equal false, res, "DPNombre no está validando el dato del nombre #{d.nombre}"
    end
  end
end