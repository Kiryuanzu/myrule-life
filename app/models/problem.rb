class Problem < ApplicationRecord
  belongs_to :user
  has_many :rules, :dependent => :destroy
end
