class Man
def self.say_hi                  #self позвол€ет вызвать метод say_hi непосредственно из класса, не создава€ дл€ этого экземпл€р класса
puts "Hi!"
end
end

class Hipster
def self.say_hi
puts "Hi, mate!"
end
end

class Friendo
def self.say_hi
puts "Hi, friendo"
end
end

Man.say_hi
Hipster.say_hi
Friendo.say_hi