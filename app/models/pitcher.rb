class Pitcher < ApplicationRecord
  before_validation :default_values
  before_save :set_stats

  validates :name, presence: true, length: { in: 3..80 }
  validates :arm, presence: true, length: { in: 1..35 }
  validates :ip, allow_nil: true, numericality: true, length: { in: 0..6 }
  validates :hits, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :walks, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :er, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :so, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :whip, allow_nil: true, numericality: false, length: { in: 0..8 }
  validates :era, allow_nil: true, numericality: false, length: { in: 0..8 }
  validates :k_per_nine, allow_nil: true, numericality: false, length: { in: 0..8 }
  validates :bb_per_nine, allow_nil: true, numericality: false, length: { in: 0..8 }

  private

  def default_values
    self.ip ||= 0
    self.hits ||= 0
    self.walks ||= 0
    self.er ||= 0
    self.so ||= 0
  end

  def set_stats
    player_stats = {
      ip: ip,
      hits: hits,
      walks: walks,
      so: so,
      er: er
    }
    self.whip = Baseball.compile(player_stats).whip
    self.era = Baseball.compile(player_stats).era
    self.k_per_nine = Baseball.compile(player_stats).k_per_nine
    self.bb_per_nine = Baseball.compile(player_stats).bb_per_nine
  end
end
