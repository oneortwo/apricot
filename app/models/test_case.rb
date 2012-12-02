class TestCase < ActiveRecord::Base
  attr_accessible :description, :name, :result
  has_many :test_points
  has_many :requirements
end
