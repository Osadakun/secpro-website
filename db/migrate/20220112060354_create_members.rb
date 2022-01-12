class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.text :name
      t.datetime :plan

      t.timestamps
    end
  end
end
