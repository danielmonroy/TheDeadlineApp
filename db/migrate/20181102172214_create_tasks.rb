class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.string :title
      t.text :description
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
