class Game

  attr_reader :computer_selection, :current_selection, :player_selection

  WINNING_COMBOS = [[:ROCK, :SCISSORS], [:SCISSORS, :PAPER], [:PAPER, :ROCK]]


  def initialize(player_selection, computer_selection)
    @player_selection = player_selection
    @computer_selection = computer_selection
    @current_selection = [player_selection, computer_selection]
  end

  def result
    return :draw if computer_selection == player_selection
    WINNING_COMBOS.include?(current_selection) ? :win : :lose
  end

  def button_pressed
    arr = [params[:ROCK], params[:PAPER], params[:SCISSORS]]
    arr.each {|x| @button_pressed = x.to_sym unless x == nil}
  end

end
