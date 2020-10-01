class Report < ApplicationRecord
    belongs_to :user
    belongs_to :animal
    validates :topic, presence: true
    validates :observations, presence: true

    def self.search(query)
        where("name like ?", "%#{query}%")
      end
end
