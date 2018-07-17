# coding: utf-8

class Board

  def initialize

#we create instances for all of the 9 cases

    left_up = BoardCase.new
    up_center = BoardCase.new
    up_right = BoardCase.new
    middle_left = BoardCase.new
    middle_center = BoardCase.new
    middle_right = BoardCase.new
    down_left = BoardCase.new
    down_middle = BoardCase.new
    down_right = BoardCase.new

#we put all the cases inside of an array in order later to know the position of each of the cases
    @board = [left_up, up_center, up_right,
              middle_left, middle_center, middle_right,
              down_left,down_middle, down_right]
  end
  def print_board
    #Method that prints the board game
    #We display the values of each of the cases according to their index, taking the value 'boardcase.new'

    puts "          " + @board[0].status + " |" + @board[1].status + " |" + @board[2].status
    puts "        ---------"
    puts "          " + @board[3].status + " |" + @board[4].status + " |" + @board[5].status
    puts "        ---------"
    puts "          " + @board[6].status + " |" + @board[7].status + " |" + @board[8].status
  end

  #We create a method that checks out if the player wins
  def win
    if @array[0] == @array[1] && @array[0] == @array[2]
      return true
    elsif  @array[3] == @array[4] &&  @array[3] == @array[5]
      return true
    elsif  @array[6] == @array[7] &&  @array[6] == @array[8]
      return true
    elsif  @array[0] == @array[3] &&  @array[0] == @array[6]
      return true
    elsif  @array[1] == @array[4] &&  @array[1] == @array[7]
      return true
    elsif  @array[2] == @array[5] &&  @array[2] == @array[8]
      return true
    elsif  @array[0] == @array[4] &&  @array[0] == @array[8]
      return true
    elsif  @array[2] == @array[4] &&  @array[2] == @array[6]
      return true
    end
  end
end
