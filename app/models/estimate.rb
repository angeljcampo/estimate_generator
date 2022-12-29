class Estimate < ApplicationRecord
  has_one :plan
  has_one :service
end
