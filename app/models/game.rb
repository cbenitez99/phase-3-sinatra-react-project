class Game < ActiveRecord::Base
    has_many :reviews

    def self.sort_game
        Game.all.sort_by {|g| g.platform}
    end
end