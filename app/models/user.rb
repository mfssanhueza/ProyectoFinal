class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:user, :admin]
  after_initialize :set_defaul_role, :if => :new_record?

  def set_defaul_role
    self.role ||= :user
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
