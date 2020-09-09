require 'test_helper'

class ChildArchivesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get child_archives_index_url
    assert_response :success
  end

  test "should get show" do
    get child_archives_show_url
    assert_response :success
  end

  test "should get new" do
    get child_archives_new_url
    assert_response :success
  end

  test "should get create" do
    get child_archives_create_url
    assert_response :success
  end

  test "should get edit" do
    get child_archives_edit_url
    assert_response :success
  end

  test "should get update" do
    get child_archives_update_url
    assert_response :success
  end

end
