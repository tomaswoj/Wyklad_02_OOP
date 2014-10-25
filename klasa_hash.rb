class KlasaHash

  @@PI= 3.1415
  @atrybut1
  @atrybut2

  STALA_KLASOWA = "Stala klasowa"

  def initialize param
    @atrybut1 = param["atr1"]
    @atrybut2 = param["atr2"]
  end

  def metoda param
    puts "Wolam metode z parametrem:#{param}"
  end

  def self.informacja
    puts "I'm a KlasaHash. My curent PI value is:#{@@PI}"
  end

  def KlasaHash.informacja2
    puts "I'm a KlasaHash. My curent PI value is:#{@@PI}"
  end
end