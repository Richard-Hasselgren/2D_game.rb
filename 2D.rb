require 'chingu'

class Game < Chingu::Window
	
	def initialize
		super 
		self.input = {esc: :exit}
		Player.create
		end


end

class Player < Chingu::GameObject

	def setup
		@x = 400
		@y = 300
		@image = Gosu::Image["ship.png"]
		self.input = {
			holding_left: :left,
			holding_right: :right,
			space: :fire
		}
	end

	def left
		@x -= 5
	end

	def right
		 @x += 5
	end

	def fire
		Laser.create(x: @x, y: @y)
	end
end


class Laser < Chingu::GameObject
	has_traits :velocity

	def setup
		@image = Gosu::Image["laser.png"]
		self.velocity_y = -10
		after(5000) {self.destroy}
	end

end

Game.new.show
