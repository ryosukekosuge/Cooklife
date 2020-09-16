class Recipe < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :recipe_comments, dependent: :destroy
end
