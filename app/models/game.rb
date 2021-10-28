class Game < ActiveRecord::Base
    has_many :reviews
    belongs_to :platform
end