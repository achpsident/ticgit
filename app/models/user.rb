class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shortlists
  has_many :projects
  has_many :appointments, through: :projects
  has_many :comments, through: :shortlists # remove if unnecessary f
end
