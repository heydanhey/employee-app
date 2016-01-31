class CreateGroupedEmployees < ActiveRecord::Migration
  def change
    create_table :grouped_employees do |t|
      t.integer :employee_id
      t.integer :group_id

      t.timestamps
    end
  end
end
