require 'test_helper'

class PositionPlayersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @player = PositionPlayer.new(name: "Ev Busby", position: "SS", singles: 106, doubles: 40, triples: 3,
                                 hr: 40, at_bats: 608, walks: 83, hbp: 7, sac_flies: 2, rbis: 108, hits: 189)
    @player.save
  end

  test "should get index" do
    get position_players_path
    assert_response :success
  end

  test "should get new" do
    get new_position_player_path
    assert_response :success
  end

  test "should get edit" do
    get edit_position_player_path(@player)
    assert_response :success
  end

  test "should get show" do
    get position_player_path(@player)
    assert_response :success
  end
end
