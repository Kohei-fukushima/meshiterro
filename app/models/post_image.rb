class PostImage < ApplicationRecord

    has_one_attached :image
    belongs_to :user
    
    
 def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpeg')
      image.attach(io: File.open(file_path),flename: 'default_image.jpg' ,content_type: 'image/jpg')
    end
    image
 end
end
