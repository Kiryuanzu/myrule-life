class LikeRule < ApplicationRecord
  belongs_to :rule
  belongs_to :user

  validates :user_id, uniqueness: { scope: :rule_id }
end
