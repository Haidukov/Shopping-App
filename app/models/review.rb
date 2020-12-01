class Review < ApplicationRecord
    belongs_to :shopping_item
    belongs_to :user
end
