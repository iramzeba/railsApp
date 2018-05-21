class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :role
  

  def admin?
  has_role?(:admin)
end
 def account_admin?
 	has_role?(:account_admin)
 end
def client?
  has_role?(:client)
end 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products, dependent: :destroy
end
