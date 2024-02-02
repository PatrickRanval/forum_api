class Post < ApplicationRecord
     validates :title, presence: true
     validates :content, presence: true
     validates :forum, presence: true
     validate :img_url_is_image

     belongs_to :forum

     def img_url_is_image
          unless img_url.match(/(https?:\/\/.*\.(?:png|jpg))/i) 
           errors.add(:img_url, "Please submit a real image")
          end
     end
end
