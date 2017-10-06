class User < ActiveRecord::Base

    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

    validates :first_name, :last_name, presence: true
    validates :email, presence: true, format: { with: EMAIL_REGEX }
    
    has_many :owners
    has_many :blogs, through: :owners
    has_many :posts
    has_many :messages
end
