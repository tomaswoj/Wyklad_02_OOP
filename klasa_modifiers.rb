class KlasaModifiers
  @nazwa
  @@liczebnosc=0

  @pole2
  @pole3

  def initialize param
    @nazwa=param
    @@liczebnosc +=1
  end

  public
  def metodaPublic
    puts "Metoda public"
    metodaPrivate
  end

  def wypiszLiczebnosc
    puts "Liczebnosc:#{@@liczebnosc}"
  end

  private
  def metodaPrivate
    puts "Metoda private"
  end

  protected
  def metodaProtected
    puts "Metoda protected"
  end

end