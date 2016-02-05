class Thing < ActiveRecord::Base
  validates :foo, :bar, presence: true
end
