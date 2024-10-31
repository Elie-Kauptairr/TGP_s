class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :the_gossip_project
end
