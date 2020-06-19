# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.references :user
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :unit_count
      t.integer :year_built
      t.boolean :ae_flood_zone
      t.string :msa
      t.string :submarket
      t.string :broker
      t.integer :analysis_year
      t.decimal :asking_price
      t.decimal :price_per_unit
      t.decimal :offer_price
      t.decimal :sales_price
      t.text :notes
      t.string :status
      t.string :fka
      t.string :photo

      t.timestamps
    end
  end
end
