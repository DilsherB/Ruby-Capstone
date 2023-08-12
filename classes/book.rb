require_relative 'items'

class Book < Items
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
  end
  
  private
  def can_be_archived?
    super() || cover_state == 'bad'
  end
end
