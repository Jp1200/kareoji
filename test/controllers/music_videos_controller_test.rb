require 'test_helper'

class MusicVideosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get music_videos_index_url
    assert_response :success
  end

  test "should get show" do
    get music_videos_show_url
    assert_response :success
  end

  test "should get create" do
    get music_videos_create_url
    assert_response :success
  end

  test "should get update" do
    get music_videos_update_url
    assert_response :success
  end

  test "should get delete" do
    get music_videos_delete_url
    assert_response :success
  end

end
