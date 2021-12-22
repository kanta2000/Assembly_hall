class Recipe < ApplicationRecord
  
  attachment :image
  
  has_many :post_comments, dependent: :destroy
  
  belongs_to :user
  
  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
  
end
