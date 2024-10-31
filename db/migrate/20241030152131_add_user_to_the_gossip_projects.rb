class AddUserToTheGossipProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :the_gossip_projects, :user, foreign_key: true, null: true
  end
end
