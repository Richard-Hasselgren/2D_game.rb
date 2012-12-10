require 'chingu'

class game < Chingu::window
       

	def initiaize
		super
		self.input = {esc: :exit}
	end
end

class Weapon < Chingu::GameObject
	has_traits :velocity, :timer

	def setup
		@image = Gosu::Image["laser.png"]
		self.velocity_y = -10
		after(1000) {self.destroy}
	end
end

class Lazer < Weapon

	def setup
		super
		@image = Gosu["laser.png"]

class Player < Chingu::GameObject

	def setup
		@x = 400
		@y = 300
		@image = Gosu::Image["BILD"]
	    self.input = {
	    	holding_left: :left,
	    	holding_right: :right
	    	space: :fire
	    }
end

def left
	@x -= 5
end

def right
	@x += 5
end

class Laser < Chingu::GameObject

	has_traits :velocity, :timer

	def setup
		@image = Gosu::Image["laster.png"]
	    Gosu::Sound["Sound"]
	    self.velocity_y = -10
    
       after
    end


Game.new.show