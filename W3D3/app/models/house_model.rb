class House < ActiveRecord::Base
  validate :name, :address, presence: true
end
