class Opportunity < ActiveRecord::Base
  validates :customer,  presence: true
end
