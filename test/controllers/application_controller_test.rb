require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  def test_index
    get root_path

    assert_response :ok
    assert_select 'h1', 'Image Sharer'
  end
end
