require 'test_helper'

class FormrequestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get formrequest_index_url
    assert_response :success
  end

end
