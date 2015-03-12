require 'test_helper'

class ContrAngelinaControllerTest < ActionController::TestCase
  test "should get mail" do
    get :mail
    assert_response :success
  end

end
