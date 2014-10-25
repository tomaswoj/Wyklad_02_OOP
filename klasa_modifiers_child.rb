require './klasa_modifiers'
class KlasaModifiersChild < KlasaModifiers

  def initialize
    super "nazwa"
  end

  public
  def metodyRodzica
    metodaPrivate
    metodaProtected
    drugaKlasa = KlasaModifiersChild.new

    puts "Wolam metode protected innej instancji!"
    drugaKlasa.metodaProtected
  end

  def wypiszLiczebnosc
    puts "Liczebnosc przeciazona:#{@@liczebnosc}"
  end

end