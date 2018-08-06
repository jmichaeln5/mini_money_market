class Lender < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable

  has_many :notes, as: :notable

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def full_address
    "#{self.street}, #{self.city}, #{self.state}, #{self.zip}"
  end

end
