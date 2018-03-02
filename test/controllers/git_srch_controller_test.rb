require 'test_helper'

class GitSrchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get git_srch_index_url
    assert_response :success
  end

end
