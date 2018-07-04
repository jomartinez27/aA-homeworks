class Person < ActiveRecord::Base
  validate :name, :house_id, presence: true

  
end
