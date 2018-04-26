require 'test_helper'

class PositionPlayersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get position_players_path
    assert_response :success
  end

  test "should get new" do
    get new_position_player_path
    assert_response :success
  end

  # test "should get edit" do
  #   get position_player_edit_url
  #   assert_response :success
  # end
  #
  # test "should get update" do
  #   get position_player_update_url
  #   assert_response :success
  # end
  #
  # test "should get show" do
  #   get position_player_show_url
  #   assert_response :success
  # end
  #
  # test "should get destroy" do
  #   get position_player_destroy_url
  #   assert_response :success
  # end

end
