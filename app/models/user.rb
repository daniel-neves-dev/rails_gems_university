class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :courses

  after_create :assign_default_role

  def assign_default_role
    if User.count == 1
      self.add_role(:admin) if self.roles.blank?
      self.add_role(:teacher)
    else
      self.add_role(:student) if self.roles.blank?
    end
  end
end
