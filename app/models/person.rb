class Person < ActiveRecord::Base
  has_one :administrator
  has_one :client
  has_one :chef
  has_one :waiter
end
