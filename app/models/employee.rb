class Employee < ActiveRecord::Base
  # add methods here
  belongs_to :user
  has_many :grouped_employees
  has_many :groups, through: :grouped_employees

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_japanese_prefix
    "+81 #{phone_number}"
  end

  # def address_coords(address)
  #   geocoded_by :address
  #   after_validation :geocode
  # end
end
