class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :start
      t.string :finish
      t.integer :state, default: 1

      t.timestamps
    end
  end
end
