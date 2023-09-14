class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    cups.each_with_index do |cup,i|
      if i != 6 && i != 13
        4.times do |num|
          cup << :stone 
        end
      end
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if !(0..14).include?(start_pos)
    raise 'Starting cup is empty' if start_pos == 0
  end

  def make_move(start_pos, current_player_name)
    i = 0

    until cups[start_pos].empty?
      next if 
        cups[start_pos + i] << cups[start_pos].pop
        i += 1
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end