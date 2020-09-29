class Section < ApplicationRecord
    has_many :users
    has_many :animals

end

#Create a section on user sign up page, or choose preseeded data on a drop down menu in a form_with with fields_for 
#for creating a new user.
#If you are signing in through omniauth you will be redirected to a form with prefilled username.
#Section has_many users, assign the section_id to users.