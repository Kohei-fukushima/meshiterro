class Favorite < ApplicationRecord
    
    belongs_to :users
    belongs_to :post_image
    
end
