class Message < ActiveRecord::Base

    validates :author, presence: true, length: {in: 2..20}
    validates :message, presence: true, length: {in: 20..500}

    belongs_to :user
    belongs_to :post

end
