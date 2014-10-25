require './klasa'
require './klasa_hash'
require './klasa_default'
require './klasa_multi'
require './klasa_child'
require './klasa_modifiers_child'
require './wektor2_d'


puts "Hello World"

instancja = Klasa.new "Nowa nazwa"
#instancja = Klasa.new "Parametr1" "Parametr2"

puts instancja.inspect

instancja2 = Klasa.allocate # no constructor run

puts instancja2.inspect

instancja3 = KlasaHash.new "atr1"=>"wartosc1", "atr2"=> "wartosc2"

puts instancja3.inspect


instancja4 = KlasaDefault.new
puts instancja4.inspect

instancja4 = KlasaDefault.new "Pierwszy prawdziwy"
puts instancja4.inspect

instancja5 = KlasaMulti.new "arg1","arg2","arg3"
puts instancja5.inspect

puts instancja3.send :metoda, "argument"

puts KlasaChild.allocate.metodaChild

klasa =  KlasaModifiersChild.new
klasa.metodyRodzica

#not so private
puts "Wolam metode prywatna!:"
klasa2 = KlasaModifiers.new "nazwa"
klasa.send :metodaPrivate

puts "Przodkowie klasy KlasaModifiersChild:#{KlasaModifiersChild.ancestors}"

klasa.wypiszLiczebnosc

klasa3 = KlasaModifiers.new "nazwa3"

klasa3.wypiszLiczebnosc

puts "Stala klasowa ma wartosc:#{KlasaHash::STALA_KLASOWA}"

wektor = Wektor2D.new 2,3
wektor.testWektorow

KlasaHash.informacja
KlasaHash.informacja2

klasa4 = KlasaHash.new "atr1"=>"wartosc1"

def klasa4.informacja3
  puts "A to ciekawe podejscie do tworzenia metod dla instancji klas..."
end

klasa4.informacja3

#klasa5 = KlasaHash.new "atr1"=>"wartosc1"
#klasa5.informacja3

array = Array.new

for i in 0..9
  puts "Tworze instancje w iteracji:#{i}"
  array[i]= KlasaHash.new "atr#{i}"=>"wartosc1"
end


puts "Tablica:#{array.inspect}"

for i in 0..9
  tempobject = array[i];
  def tempobject.informacjaLoop
    puts "informacja in the looop"
  end
end

for i in array
  i.informacjaLoop
end


