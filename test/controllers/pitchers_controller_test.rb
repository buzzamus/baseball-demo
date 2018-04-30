require 'test_helper'

class PitchersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @pitcher = Pitcher.new(name: "Ev Busby", arm: "lefty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
    @pitcher.save
  end

  test "should get index" do
    get pitchers_path
    assert_response :success
  end

  test "should get new" do
    get new_pitcher_path
    assert_response :success
  end

  test "should get edit" do
    get edit_pitcher_path(@pitcher)
    assert_response :success
  end

  test "should get show" do
    get pitcher_path(@pitcher)
    assert_response :success
  end
end
