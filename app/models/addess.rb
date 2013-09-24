class Addess < ActiveRecord::Base
  belongs_to :person
  attr_accessible :city, :country, :number, :street, :street_type, :zip
end
