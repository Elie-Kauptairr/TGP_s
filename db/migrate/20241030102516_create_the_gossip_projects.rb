class CreateTheGossipProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :the_gossip_projects do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
