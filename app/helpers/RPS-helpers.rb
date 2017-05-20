module RPSHelpers

  def player_choice
    tools.each {|x| @played = x.to_sym unless x == nil}
    @played
  end

  def tools
    [params[:ROCK], params[:PAPER], params[:SCISSORS]]
  end

  def new_game
    @game = Game.new(@played, Computer.new.selection)
  end

end
