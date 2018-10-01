require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  test "index" do
    login_as("taro")
    get :index
    assert_response :success
  end

  test "index bofore login" do
    assert_raise(ApplicationController::Forbidden) { get :index }
  end

  test "index before login" do
    get :index
    assert_response :forbidden
  end

end
