require_relative 'carta'

class Baraja
	
	def initialize()
		@cartas = []
		pintas = ["Corazon", "Pica", "Trebol", "Diamante"]
		pintas.each do |e|
			for i in 1..13
				case i
					when 2..10
						@cartas << Carta.new(e, i.to_s)
					when 1
						@cartas << Carta.new(e, 'A')
					when 11
						@cartas << Carta.new(e, 'J')
					when 12
						@cartas << Carta.new(e, 'Q')
					when 13
						@cartas << Carta.new(e, 'K')
				end
			end
		end
	end

	def barajar
		@cartas.shuffle!
	end

end

baraja1 = Baraja.new()

puts baraja1.barajar