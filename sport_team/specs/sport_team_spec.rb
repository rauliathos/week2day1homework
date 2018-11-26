require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestSportTeam < MiniTest::Test


  def test_sport_team
    sport_team  = SportTeam.new('CodeClan',["Raul", "Mohamed", "Gabriele"], "Sian", 0)
    p sport_team
  end

  def test_return_team_name
    sport_team  = SportTeam.new('CodeClan',["Raul", "Mohamed", "Gabriele"], "Sian", 0)
    assert_equal('CodeClan', sport_team.team_name)
  end


  def test_return_players
    sport_team  = SportTeam.new('CodeClan',["Raul", "Mohamed", "Gabriele"], "Sian", 0)
    assert_equal(["Raul", "Mohamed", "Gabriele"], sport_team.players)
  end

  def test_return_coach
    sport_team  = SportTeam.new('CodeClan',["Raul", "Mohamed", "Gabriele"], "Sian", 0)
    assert_equal('Sian', sport_team.coach)
  end


  def test_set_update_coach_name
    sport_team  = SportTeam.new('CodeClan',["Raul", "Mohamed", "Gabriele"], "Sian", 0)
    sport_team.coach = "George"
    assert_equal('George', sport_team.coach)
  end

  def test_add_new_player
    sport_team  = SportTeam.new('CodeClan',["Raul", "Mohamed", "Gabriele"], "Sian", 0)
    new_team = sport_team.add_new_player("Mark")
    assert_equal(["Raul", "Mohamed", "Gabriele", "Mark"],new_team )
  end

  def test_check_player
    sport_team  = SportTeam.new('CodeClan',["Raul", "Mohamed", "Gabriele"], "Sian", 0)
    team = sport_team.check_player("Raul")
    assert_equal(true, team )
  end

  def test_check_points
    sport_team  = SportTeam.new('CodeClan',["Raul", "Mohamed", "Gabriele"], "Sian", 0)
    result = sport_team.points_check("victory")
    assert_equal(1, result)
  end

end
