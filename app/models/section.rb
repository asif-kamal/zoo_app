class Section < ApplicationRecord
    belongs_to :users
    has_many :animals

end
