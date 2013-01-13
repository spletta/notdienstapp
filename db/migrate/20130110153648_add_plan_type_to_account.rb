class AddPlanTypeToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :plan_type, :string
  end
end
