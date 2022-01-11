class CreateCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :counts do |t|
      t.int :counter

      t.timestamps
    end
  end
end
