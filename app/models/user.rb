class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :pools, dependent: :destroy
  
  has_many :joins, :dependent => :destroy
  has_many :miners, :through => :joins
end
