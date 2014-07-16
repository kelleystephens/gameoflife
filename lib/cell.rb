class Cell

  attr_accessor :x, :y, :alive

  def initialize(x, y)
    @x = x
    @y = y
    @alive = false
  end

  def toggle_state
    @alive = !@alive
  end

  def is_neighbor?(cell)
    x1 = self.x
    y1 = self.y
    x2 = cell.x
    y2 = cell.y

    return Math.sqrt((y1 - y2)**2 + (x1 - x2)**2).floor == 1
  end

  alias alive? alive

end
