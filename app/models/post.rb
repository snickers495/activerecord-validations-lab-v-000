class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimim: 250}
  validates :summary, length: {maximum: 250}
end
