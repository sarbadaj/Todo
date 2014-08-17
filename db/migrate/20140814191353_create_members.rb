class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.references :project, index: true

      t.timestamps
    end
  end
end
