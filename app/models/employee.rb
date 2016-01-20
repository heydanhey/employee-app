class Employee < ActiveRecord::Base
  # add methods here

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_japanese_prefix
    "+81 #{phone_number}"
  end
end
