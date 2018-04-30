require 'test_helper'

class PitcherTest < ActiveSupport::TestCase
  def setup
    @pitcher = Pitcher.create!(name: "Olly B", arm: "lefty", ip: 202.2, hits: 154,
                               er: 55, walks: 52, so: 197)
    @pitcher2 = Pitcher.create!(name: "Olly B", arm: "lefty")
  end

  test "Pitcher should be created" do
    assert @pitcher.valid?
  end

  test "name should be present" do
    @pitcher.name = " "
    assert_not @pitcher.valid?
  end

  test "name should not be too short" do
    @pitcher.name = "aa"
    assert_not @pitcher.valid?
  end

  test "name should not be too long" do
    @pitcher.name = "a" * 81
    assert_not @pitcher.valid?
  end

  test "arm should be present" do
    @pitcher.arm = " "
    assert_not @pitcher.valid?
  end

  test "arm should not be too long" do
    @pitcher.arm = "a" * 36
    assert_not @pitcher.valid?
  end

  test "default values should be set if no value included" do
    assert_equal 0, @pitcher2.hits
    assert_equal 0, @pitcher2.walks
    assert_equal 0, @pitcher2.so
    assert_equal 0, @pitcher2.ip
    assert_equal 0, @pitcher2.er
  end

  test "ERA should be figured automatically" do
    assert_equal "2.44", @pitcher.era
  end

  test "WHIP should be figured automatically" do
    assert_equal "1.016", @pitcher.whip
  end

  test "K per nine should be figured automatically" do
    assert_equal "8.8", @pitcher.k_per_nine
  end

  test "BB per nine should be figured automatically" do
    assert_equal "2.3", @pitcher.bb_per_nine
  end
end
