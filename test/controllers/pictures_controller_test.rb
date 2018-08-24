require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get pictures_edit_url
    assert_response :success
  end

  test "should get update" do
    get pictures_update_url
    assert_response :success
  end

end
