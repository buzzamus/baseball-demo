require 'test_helper'
class PagesTest < ActionDispatch::IntegrationTest
  test "Should get homepage" do
    get pages_home_url
    assert :success
  end

  test "should get root path" do
    get root_url
    assert :success
  end

end
