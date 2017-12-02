class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimim: 250}
end
