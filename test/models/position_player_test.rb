require 'test_helper'

class PositionPlayerTest < ActiveSupport::TestCase
  def setup
    @player = PositionPlayer.create!(name: "Ev Busby", position: "SS", singles: 106, doubles: 40, triples: 3,
                                 hr: 40, at_bats: 608, walks: 83, hbp: 7, sac_flies: 2, rbis: 108, hits: 189)
  end

  test "player should be valid" do
    assert @player.valid?
  end

  test "batting average should be figured automatically" do
    assert_equal ".311", @player.avg
  end

end
