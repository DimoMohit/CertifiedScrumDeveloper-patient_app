class CreateRpns < ActiveRecord::Migration
  def change
    create_table :rpns do |t|

      t.timestamps null: false
    end
  end
end
