require 'open-uri'
class User < ApplicationRecord
  #mount_uploader :image, ImageUploader
  has_many :rules, :dependent => :destroy
  has_many :problems, :dependent => :destroy


  def self.find_or_create_from_auth(auth)
    provider = auth[:provider]
    uid = auth[:uid]
    user_name = auth[:info][:name]
    image_url = auth[:info][:image]
    #image = open(image_url)  

    self.find_or_create_by(provider: provider, uid: uid) do |user|
      user.username = user_name
      user.image = image_url
    end
  end
end
