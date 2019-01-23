require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  def test_create_fail_because_url_is_empty
    image = Image.new(url: '')

    assert_not_predicate image, :valid?
    assert_equal 'field cannot be empty', image.errors.messages[:url].first
  end

  def test_create_success_add_tags
    image_tags = 'cool, awesome'
    image = Image.new(url: '', tag_list: image_tags)
    assert_equal image_tags.split(", "), image.tag_list
  end
end
