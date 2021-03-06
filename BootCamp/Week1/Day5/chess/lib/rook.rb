# lib/rook.rb

class Rook
  def initialize(pos_x, pos_y, color)
    @pos_x = pos_x
    @pos_y = pos_y
    @color = color
  end

  def move?(dst_x, dst_y)
    dx = (dst_x - @pos_x).abs
    dy = (dst_y - @pos_y).abs

     dx == 0 || dy == 0 
  end 
end