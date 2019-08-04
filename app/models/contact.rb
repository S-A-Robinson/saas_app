class Contact < ActiveRecord::Base
    #Adds validation to the contact form so they must be filled in to be accepted into the database
    validates :name, presence: true
    validates :email, presence: true
    validates :comments, presence: true
end