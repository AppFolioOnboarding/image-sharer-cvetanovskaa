class Image < ApplicationRecord
  validates :url, presence: { with: true, message: 'field cannot be empty' },
                  format: { with: /\.(png|jpg)\Z/i, message: 'incorrect format' }
end
