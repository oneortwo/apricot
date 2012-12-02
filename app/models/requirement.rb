class Requirement < ActiveRecord::Base
  attr_accessible :description, :name, :test_case_id
end
