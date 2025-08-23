class CreateInvoices < ActiveRecord::Migration[7.1]
  def change
    create_table :invoices do |t|
      t.string :customer_name
      t.string :invoice_number
      t.decimal :total
      t.string :status
      t.date :due_date
      t.text :notes

      t.timestamps
    end
  end
end
