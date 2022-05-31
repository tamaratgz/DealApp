class CreatePolls < ActiveRecord::Migration[6.1]
  def change
    create_table :polls do |t|
      t.string :title
      t.string :description
      t.date :deadline
      t.references :user, null: false, foreign_key: true
      t.references :project, null: true, foreign_key: true

      t.timestamps
    end
  end
end
