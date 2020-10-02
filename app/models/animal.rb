class Animal < ApplicationRecord
    belongs_to :section
    has_many :reports
    has_many :users, through: :reports
    validates :name, presence: true
    scope :search, -> (query) {where("name LIKE ?",  "%#{query}%")}
    accepts_nested_attributes_for :reports
    
    # def self.search(query)
    #     where("name like ?", "%#{query}%")
    #   end
end
