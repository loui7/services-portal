class Service < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :location, presence: true

    belongs_to :user
    has_many :proposals
end
