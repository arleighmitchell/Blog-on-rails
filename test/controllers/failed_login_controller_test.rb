require 'test_helper'

class FailedLoginControllerTest < ActionController::TestCase
  test "should get failed_login" do
    get :failed_login
    assert_response :success
  end

end
