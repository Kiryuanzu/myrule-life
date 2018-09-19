class User < ApplicationRecord
  has_many :rules, :dependent => :destroy
  has_many :problems, :dependent => :destroy

  def self.find_or_create_from_auth(auth)
    provider = auth[:provider]
    uid = auth[:uid]
    username = auth[:info][:user_name]
    image_url = auth[:info][:image]

    self.find_or_create_by(provider: provider, uid: uid) do |user|
      user.username = username
    end
  end
end
