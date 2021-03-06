class Player < ActiveRecord::Base
  belongs_to :game

  has_one :target, :class_name => "Player", :foreign_key => 'chaser_id'
  belongs_to :chaser, :class_name => "Player"

  def self.by_id(id, fallback_url = "/")
    raise UserNotFoundException.new(id, fallback_url) if (player = Player.find(id)).nil?
    player
  end

  def is_alive?
    !chaser.nil?
  end
end
