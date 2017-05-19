module RPSHelpers

  def button_pressed
    arr = [params[:ROCK], params[:PAPER], params[:SCISSORS]]
    arr.each {|x| @button_pressed = x.to_sym unless x == nil}
  end

  def new_game
    @game = Game.new(@button_pressed, Computer.new.selection)
  end

end
