class AddColumnInputDataToRpns < ActiveRecord::Migration
  def change
    add_column :rpns, :input_data, :string
  end
end
