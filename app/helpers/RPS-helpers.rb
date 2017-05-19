module RPSHelpers

  def player_choice
    tools.each {|x| @player_choice = x.to_sym unless x == nil}
  end

  def tools
    [params[:ROCK], params[:PAPER], params[:SCISSORS]]
  end

  def new_game
    @game = Game.new(@player_choice, Computer.new.selection)
  end

end
