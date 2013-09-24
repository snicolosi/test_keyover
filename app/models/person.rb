class Person < ActiveRecord::Base
  attr_accessible :name, :organization, :surname, :title
end
