require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artists_index_url
    assert_response :success
  end

  test "should get show" do
    get artists_show_url
    assert_response :success
  end

  test "should get create" do
    get artists_create_url
    assert_response :success
  end

  test "should get update" do
    get artists_update_url
    assert_response :success
  end

  test "should get delete" do
    get artists_delete_url
    assert_response :success
  end

end
