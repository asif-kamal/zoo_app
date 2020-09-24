class Section < ApplicationRecord
    has_many :users
    has_many :reports, through: :users
    has_many :animals

end
