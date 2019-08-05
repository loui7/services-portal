class Service < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :location, presence: true

    belongs_to :user
    has_many :proposals
    has_many_attached :image

    def average_proposal
        proposals.count > 0 ? proposals.sum(:price) / proposals.count : 0
    end
    
    def open_for_proposals?
        return false if completed_on != nil
        proposals.each { |p| return false if p.accepted == true }
        return true
    end
end
