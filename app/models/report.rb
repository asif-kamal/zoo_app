class Report < ApplicationRecord
    belongs_to :user
    belongs_to :animal
    validates :topic, presence: true
    validates :observations, presence: true

end
