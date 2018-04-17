class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  validates :name, :composer, :milliseconds, :bytes, :unit_price, presence: true

  validates :milliseconds, :bytes, numericality: {
                                                   only_integer: true,
                                                   greater_than: 0
                                                 }

  validates :unit_price, numericality: {
                                         greater_than_or_equal_to: 0.0
                                       }

  validate :name_must_be_capitalized

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

private

  def name_must_be_capitalized
    # Step 1 - Make sure there *is* a name
    return unless name.present?

    # Step 2 - Check that the first char IS an uppercase letter
    first_char = name[0]
    first_char_is_not_upcased = (first_char != first_char.upcase)

    # Step 3 - IF the first char is not uppercase, add an error
    errors.add(:name, 'must be capitalized!!!') if first_char_is_not_upcased
  end

end
