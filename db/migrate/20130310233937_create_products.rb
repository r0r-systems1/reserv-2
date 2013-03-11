class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :event_type
      t.date :event_date
      t.integer :num_days
      t.time :event_time
      t.text :description
      t.string :image_url
      t.string :venue
      t.string :address
      t.string :contact
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
