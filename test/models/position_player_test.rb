require 'test_helper'

class PositionPlayerTest < ActiveSupport::TestCase
  def setup
    @player = PositionPlayer.create!(name: "Ev Busby", position: "SS", singles: 106, doubles: 40, triples: 3,
                                     hr: 40, at_bats: 608, walks: 83, hbp: 7, sac_flies: 2, rbis: 108, hits: 189)
  end

  test "player should be valid" do
    assert @player.valid?
  end

  test "name should be present" do
    @player.name = " "
    assert_not @player.valid?
  end

  test "name should not be too short" do
    @player.name = "aa"
    assert_not @player.valid?
  end

  test "name should not be too long" do
    @player.name = "a" * 81
    assert_not @player.valid?
  end

  test "position should be present" do
    @player.position = " "
    assert_not @player.valid?
  end

  test "position should not be too long" do
    @player.position = "a" * 51
    assert_not @player.valid?
  end

  test "player stats should be correct" do
    assert_equal 106, @player.singles
  end

  test "batting average should be figured automatically" do
    assert_equal ".311", @player.avg
  end

  test "obp should be figured automatically" do
    assert_equal ".400", @player.obp
  end

  test "slg should be figured automatically" do
    assert_equal ".584", @player.slg
  end

  test "ops should be figured automatically" do
    assert_equal ".984", @player.ops
  end

  test "runs created should be figured automatically" do
    assert_equal "139.74", @player.runs_created
  end

  test "iso should be figured automatically" do
    assert_equal ".273", @player.iso
  end
end
