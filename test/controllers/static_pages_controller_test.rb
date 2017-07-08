require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get music" do
    get static_pages_music_url
    assert_response :success
  end

  test "should get ranking" do
    get static_pages_ranking_url
    assert_response :success
  end

end
