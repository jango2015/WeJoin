require 'test_helper'

class JoinControllerTest < ActionController::TestCase
  test "should get activity" do
    get :activity
    assert_response :success
  end

end
