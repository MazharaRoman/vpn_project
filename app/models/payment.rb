class Payment < ActiveRecord::Base
  belongs_to :payment_type
  belongs_to :user
end
