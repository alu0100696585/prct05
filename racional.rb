# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  attr_accessor :x , :y
  
  def initialize (x,y)
    raise RuntimeError unless x.is_a? Integer and y.is_a? Integer
    @x=x
    @y=y
  end
  
  def to_s 
    
  	"#{@x} / #{@y}"
    
  end
  
  def suma (other)

    eu = gcd((other.y),@y)
    eu = ((other.y*@y)/eu)
    Fraccion.new((@x + other.x),eu)
	
  end  
  
  def resta (other) 
     
    eu = gcd(other.y,@y)
    eu = ((other.y*@y)/eu)
    Fraccion.new((@x-other.x),eu)  
   
  end
  
  def producto (other) 
    
   Fraccion.new((@x*other.x),(@y*other.y))
  
  end
  
  def division(other)
    
    Fraccion.new((@x*other.y),(@y*other.x))
    
  end
  
end

