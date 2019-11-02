class CreateEnquets < ActiveRecord::Migration[6.0]
  def change
    create_table :enquets do |t|

      t.string :content, null: false
      
      t.string :picture1, null: false
      t.string :picture2, null: false
      t.string :picture3, null: false
      t.string :picture4, null: false
      t.timestamps
    end
  end
end
