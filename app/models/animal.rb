class Animal < ApplicationRecord
    belongs_to :section
    has_many :users, through :sections

end
