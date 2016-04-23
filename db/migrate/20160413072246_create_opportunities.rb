class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :customer
      t.string :partner
      t.string :subject
      t.string :summary
      t.integer :initial_cost
      t.integer :monthly_cost
      t.date :expected_date_of_purchase_order
      t.string :schedule
      t.string :sales_staff
      t.string :technical_staff
      t.string :remarks

      t.timestamps null: false
    end
  end
end
