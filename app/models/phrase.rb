class Phrase < ActiveRecord::Base
  has_many :photos

  # method
  # .filter out a, the, etc
end
