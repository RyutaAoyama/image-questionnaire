class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :enquet_id

      t.timestamps
    end
  end
end
