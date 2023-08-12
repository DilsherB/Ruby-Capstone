require 'date'

class Items
  attr_reader :id
  attr_accessor :publish_date, :archived, :genre, :label

  def initialize(publish_date, _archived)
    @id = rand(1..1000)
    @publish_date = Date.parse(publish_date)
    @archived = false
  end

  def can_be_archived?
    current_date = Date.new
    current_date.year - @publish_date.year > 10
  end

  def move_to_archive?
    # true if can_be_archived?
    @archived = can_be_archived?
  end
end
