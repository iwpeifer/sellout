class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :artist_id
      t.integer :art_id
      t.integer :bidder_id
      t.float :bid_price
      t.string :status, default: "Pending"
      t.timestamps
    end
  end
end
