class Service < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :location, presence: true

    belongs_to :user
    has_many :proposals
    has_one_attached :image

    def average_proposal
        proposals.count > 0 ? proposals.sum(:price) / proposals.count : 0
    end
    
end
