class Service < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :location, presence: true

    has_many :proposals
end
