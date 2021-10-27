class Company < ActiveRecord::Base
    has_many :games
    has_many :reviews, through: :games
end