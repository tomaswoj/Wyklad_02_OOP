class Wektor2D
  attr_accessor :x
  attr_accessor :y

  def initialize x, y
    @x=x
    @y=y
  end

  public
  def +(other)
    wektor = Wektor2D.new @x+other.x, @y+other.y
    return wektor
  end

  def wypiszWektor
    puts "Wektor ma wartosc:[#{@x},#{y}]"
  end

  def testWektorow
    wektor1 = Wektor2D.new 5,6
    wektor2 = Wektor2D.new 6,7
    wektor3 = wektor1 + wektor2

    wektor3.wypiszWektor
  end

end