require_relative 'item'

class Game < Items

    attr_accessor :multiplayer, :last_played_at

def initialize(multiplayer, last_played_at)
@multiplayer = multiplayer
@last_played_at = Date.parse(last_played_at)
end

private
def can_be_archived?
    current_date = Date.new
    recent = current_date.year - @last_played_at.year > 2
    super() && recent    
end

end