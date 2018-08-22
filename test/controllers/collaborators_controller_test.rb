require 'test_helper'

class CollaboratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get collaborators_index_url
    assert_response :success
  end

  test "should get edit" do
    get collaborators_edit_url
    assert_response :success
  end

  test "should get update" do
    get collaborators_update_url
    assert_response :success
  end

  test "should get create" do
    get collaborators_create_url
    assert_response :success
  end

  test "should get new" do
    get collaborators_new_url
    assert_response :success
  end

  test "should get destroy" do
    get collaborators_destroy_url
    assert_response :success
  end

end
