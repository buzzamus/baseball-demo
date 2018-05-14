class PositionPlayer < ApplicationRecord
  before_validation :default_values, :set_hits
  before_save :set_stats

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
  validates :so, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :sac_flies, allow_nil: true, numericality: true, length: { in: 0..5 }
  validates :avg, allow_nil: true, length: { in: 0..30 }
  validates :obp, allow_nil: true, length: { in: 0..30 }
  validates :slg, allow_nil: true, length: { in: 0..30 }
  validates :ops, allow_nil: true, length: { in: 0..30 }
  validates :iso, allow_nil: true, length: { in: 0..30 }
  validates :runs_created, allow_nil: true, length: { in: 0..30 }
  validates :babip, allow_nil: true, length: { in: 0..30 }

  private

  def default_values
    self.rbis ||= 0
    self.hits ||= 0
    self.hr ||= 0
    self.singles ||= 0
    self.doubles ||= 0
    self.triples ||= 0
    self.walks ||= 0
    self.hbp ||= 0
    self.at_bats ||= 0
    self.sac_flies ||= 0
    self.so ||= 0
  end

  def set_stats
    player_stats = {
      hits: hits,
      singles: singles,
      doubles: doubles,
      triples: triples,
      hr: hr,
      walks: walks,
      hbp: hbp,
      at_bats: at_bats,
      so: so
    }
    self.avg = Baseball.compile(player_stats).batting_average
    self.obp = Baseball.compile(player_stats).obp
    self.slg = Baseball.compile(player_stats).slg
    self.ops = Baseball.compile(player_stats).ops
    self.iso = Baseball.compile(player_stats).iso
    self.runs_created = Baseball.compile(player_stats).runs_created
    self.babip = Baseball.compile(player_stats).babip
  end

  def set_hits
    self.hits = self.singles + self.doubles + self.triples + self.hr
  end
end
