class Computer

  def self.arsenal
    @arsenal ||= [:ROCK, :PAPER, :SCISSORS]
  end

  def self.selection
    arsenal().sample
  end

end
