class Group < ActiveRecord::Base
  has_many :grouped_employees
  has_many :employees, through: :grouped_employees
end
