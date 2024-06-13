# Superclass that will be inherited by all other chess pieces
class Piece
  attr_accessor :color, :location

  def initialize(color, location)
    # Colors will only be black or white
    self.color = color
    # Location is where the spot on the board is kept and used to draw pieces
    self.location = location
  end

  # (Attempts to) move piece to target destination
  def move(piece, destination)
    # Destination will be converted from letter-number format to fit 2D array (use a hash?)
    # Pseucodode for checking if move is legal:
    if piece can move to spot
      if spot is empty
        puts "[piece] to [destination]"
      elsif piece of same color on spot
        puts "Illegal move - Piece of same color already on spot"
      else
        remove opponent piece from board
        puts "[piece] captures [destination]"
      end
    else
      puts "Illegal move - Piece can't move like that"
    end
  end
end
