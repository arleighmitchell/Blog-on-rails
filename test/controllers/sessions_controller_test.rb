require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

end
