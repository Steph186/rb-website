require 'test_helper'

class ResearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get researches_index_url
    assert_response :success
  end

  test "should get edit" do
    get researches_edit_url
    assert_response :success
  end

  test "should get update" do
    get researches_update_url
    assert_response :success
  end

  test "should get create" do
    get researches_create_url
    assert_response :success
  end

  test "should get new" do
    get researches_new_url
    assert_response :success
  end

  test "should get destroy" do
    get researches_destroy_url
    assert_response :success
  end

end
