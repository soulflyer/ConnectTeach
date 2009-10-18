class CreateNewsitems < ActiveRecord::Migration
  def self.up
    create_table :newsitems do |t|
      t.string :title
      t.text :contents
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :newsitems
  end
end
