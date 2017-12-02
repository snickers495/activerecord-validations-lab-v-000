class Author < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
