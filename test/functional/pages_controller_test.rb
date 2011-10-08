require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get forside" do
    get :forside
    assert_response :success
  end

end
