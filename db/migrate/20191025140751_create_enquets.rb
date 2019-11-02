class CreateEnquets < ActiveRecord::Migration[6.0]
  def change
    create_table :enquets do |t|

      t.string :title
      t.timestamps
    end
  end
end
