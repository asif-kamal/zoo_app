class User < ApplicationRecord
    belongs_to :section
    has_many :reports
    accepts_nested_attributes_for :reports
    has_secure_password
    
end
