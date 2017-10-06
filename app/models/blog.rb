class Blog < ActiveRecord::Base

    validates :name, presence: true, length: {in: 4..255}
    validates :desc, presence: true, length: {in: 20..500}

    has_many :owners
    has_many :users, through: :owners
    has_many :posts
end
