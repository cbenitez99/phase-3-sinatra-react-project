class Game < ActiveRecord::Base
    has_many :reviews

    def self.zero_likes
        Game.where("title = 'Battlefield V'")
    end
end