class Post < ActiveRecord::Base

    validates :title, presence: true, length: {in: 2..20}
    validates :content, presence: true, length: {in: 15..1000}

    belongs_to :user
    belongs_to :blog
end
