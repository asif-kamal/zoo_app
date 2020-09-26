class User < ApplicationRecord
  
    belongs_to :section
    has_many :reports
    accepts_nested_attributes_for :reports
    has_secure_password

    def self.from_omniauth(auth)
        #byebug
        find_or_create_by(username: auth[:info][:name]) do |user|
            user.password = SecureRandom.hex(15)
        end
        # create! do |user|
        #   user.provider = auth["provider"]
        #   user.uid = auth["uid"]
        #   user.name = auth["info"]["name"]
        # end
      end
    
end
