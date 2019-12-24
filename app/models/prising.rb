class Prising < ApplicationRecord
  belongs_to :gig
  enum pricing_type: [:basic, :standard, :premium]
end
