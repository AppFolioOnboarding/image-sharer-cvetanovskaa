class Image < ApplicationRecord
  acts_as_taggable_on :tags
  validates :url, presence: { with: true, message: 'field cannot be empty' },
                  format: { with: /\.(png|jpg)\Z/i, message: 'incorrect format' }
end
