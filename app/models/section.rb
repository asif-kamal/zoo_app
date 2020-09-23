class Section < ApplicationRecord
    has_many :users
    has_many :reports
    has_many :animals

end
