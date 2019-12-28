class Pricing < ApplicationRecord
  belongs_to :gig
  has_rich_text :description
  enum pricing_type: [:basic, :standard, :premium]
end
