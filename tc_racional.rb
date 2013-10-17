# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  
  def setup 
    @p1 = Fraccion.new(3,5)
    @p2 = Fraccion.new(2,3)
  end

  def tear_down 
    #nothing
  end
  
  def test_simple 
    
    assert_equal(Fraccion.new(5,15).to_s,@p1.suma(@p2).to_s) 
    assert_equal(Fraccion.new(1,15).to_s,@p1.resta(@p2).to_s)
    assert_equal(Fraccion.new(6,15).to_s,@p1.producto(@p2).to_s)
    assert_equal(Fraccion.new(9,10).to_s,@p1.division(@p2).to_s)
  
  end
  
  def test_typecheck
    
    assert_raise(RuntimeError){Fraccion.new(1,"a")}
    
  end
  
  def test_failure
    
    assert_equal(Fraccion.new(1,3).to_s,@p1.suma(@p2).to_s)
    
  end
    
  
end
