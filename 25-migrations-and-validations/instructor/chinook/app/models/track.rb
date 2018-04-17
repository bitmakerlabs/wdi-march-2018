class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  scope :starts_with, -> (char) { where('name ILIKE ?', "#{ char }%") }
  scope :short, -> { shorter_than(SHORT) }
  scope :long, -> { longer_than_or_equal_to(LONG) }
  scope :medium, -> { longer_than_or_equal_to(SHORT).shorter_than(LONG) }

  # def self.shorter_than(milliseconds)
  #   if (milliseconds && milliseconds > 0)
  #     where('milliseconds < ?', milliseconds)
  #   else
  #     all
  #   end
  # end
  # ----- SAME AS -----
  scope :shorter_than, -> (milliseconds) {
    where('milliseconds < ?', milliseconds) if (milliseconds && milliseconds > 0)
  }

  # def self.longer_than_or_equal_to(milliseconds)
  #   if (milliseconds && milliseconds > 0)
  #     where('milliseconds >= ?', milliseconds)
  #   else
  #     all
  #   end
  # end
  #----- SAME AS -----
  scope :longer_than_or_equal_to, -> (milliseconds) {
    where('milliseconds >= ?', milliseconds) if (milliseconds && milliseconds > 0)
  }

end
