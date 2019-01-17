require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  def test_create_fail_because_url_is_empty
    image = Image.new(url: '')

    assert_not_predicate image, :valid?
    assert_equal 'field cannot be empty', image.errors.messages[:url].first
  end
end
