class RenameVntextVncontent < ActiveRecord::Migration
  def self.up
    rename_column :pages, :vntext, :vncontent
  end

  def self.down
    rename_column :pages, :vncontent, :vntext
  end
end
