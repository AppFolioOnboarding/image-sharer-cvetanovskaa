require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  def test_index
    get root_path

    assert_response :ok
    assert_select 'h1', 'Image Sharer'
  end

  def test_new
    get new_image_path

    assert_response :ok
  end

  def test_create_succeed
    assert_difference('Image.count', 1) do
      image_params = { url: 'www.gettyimages.ie/gi-resources/images/Homepage/Hero/UK/164657191_Kingfisher.jpg' }
      post images_path, params: { image: image_params }
    end
  end

  def test_create_fail
    assert_no_difference('Image.count') do
      image_params = { url: 'https://www.google.com' }
      post images_path, params: { image: image_params }
    end
  end
end
