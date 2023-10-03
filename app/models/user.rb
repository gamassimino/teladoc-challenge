class User < ApplicationRecord
  attr_accessor :first_name, :last_name

  has_many :reviews

  def first_name
    first_nm
  end

  def last_name
    last_nm
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
