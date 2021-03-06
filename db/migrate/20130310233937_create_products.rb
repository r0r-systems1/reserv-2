class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, :null =>false
      t.string :event_type, :null =>false
      t.date :event_date
      t.integer :num_days
      t.time :event_time
      t.text :description, :null =>false
      t.string :image_url
      t.string :venue, :null =>false
      t.string :address, :null =>false
      t.string :contact, :null =>false
      t.text :quote
      t.text :quote_ref
      t.string :quote_auth
      t.integer :adult_price
      t.integer :pens_price
      t.integer :fam_price
      t.integer :youth_price

      t.timestamps
    end
  end
end
