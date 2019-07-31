class Proposal < ApplicationRecord
  validates :price, presence: true
  
  belongs_to :user
  belongs_to :service
end
