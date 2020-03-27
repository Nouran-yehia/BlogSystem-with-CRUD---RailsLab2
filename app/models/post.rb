class Post < ApplicationRecord
    has_many :comments, dependent: :destroy 
    validates :title , length: { maximum: 500 }, presence: true, uniqueness: true
    validates :content, presence: true
end
