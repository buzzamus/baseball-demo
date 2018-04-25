class PositionPlayer < ApplicationRecord
  before_save :set_stats

  def set_stats
    player_stats = {
      hits: self.hits,
      singles: self.singles,
      doubles: self.doubles,
      triples: self.triples,
      hr: self.hr,
      walks: self.walks,
      hbp: self.hbp,
      at_bats: self.at_bats,
    }
    self.avg = Baseball.compile(player_stats).batting_average
  end

  validates :name, presence: true, length: { in: 3..80 }
  validates :position, presence: true, length: { in: 1..50 }
  validates :singles, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :doubles, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :triples, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :hr, allow_nil: true, numericality: true, length: { in: 0..3 }
  validates :walks, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :hbp, allow_nil: true, numericality: true, length: { in: 0..3 }
  validates :rbis, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :at_bats, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :hits, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :sac_flies, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :avg, allow_nil: true, length: { in: 0..30 }
  validates :obp, allow_nil: true, length: { in: 0..30 }
  validates :slg, allow_nil: true, length: { in: 0..30 }
  validates :ops, allow_nil: true, length: { in: 0..30 }
end