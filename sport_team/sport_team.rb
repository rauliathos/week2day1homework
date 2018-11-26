class SportTeam


attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end


  def add_new_player(new_player)
    return @players.push(new_player)
  end


  def check_player(player_name)
    return @players.include?(player_name)
  end

  def points_check(goal)
    if goal
      @points += 1
    end
  end


end
