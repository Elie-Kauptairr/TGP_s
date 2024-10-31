class City < ApplicationRecord
  has_many :users
  has_many :gossips, through: :users, source: :the_gossip_projects
end
