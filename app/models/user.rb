class User < ApplicationRecord
    belongs_to :section
    has_many :reports
    has_many :animals, through: :reports
    validates :username, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validate :password_requirements_are_met
    

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

      def password_requirements_are_met
        rules = {
          " must contain at least one lowercase letter"  => /[a-z]+/,
          " must contain at least one uppercase letter"  => /[A-Z]+/,
          " must contain at least one digit"             => /\d+/,
          " must contain at least one special character" => /[^A-Za-z0-9]+/
        }
      
        rules.each do |message, regex|
          errors.add( :password, message ) unless password.match( regex )
        end
      end
    
end
