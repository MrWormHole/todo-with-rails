class Post < ApplicationRecord
  validates :title, presence: true,
            length: {minimum: 1,maximum: 21}
  validates :content, presence: true,
            length: {minimum: 1,maximum: 108}

end
