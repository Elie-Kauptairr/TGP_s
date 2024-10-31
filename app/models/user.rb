class User < ApplicationRecord
  belongs_to :city
  has_many :gossips, class_name: "TheGossipProject"
  has_many :comments 
  has_secure_password # Permet la gestion sécurisée des mots de passe avec bcrypt

  # Validations de base
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
