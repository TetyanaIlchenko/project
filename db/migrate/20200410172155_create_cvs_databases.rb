class CreateCvsDatabases < ActiveRecord::Migration[5.1]
  def change
    create_table :cvs_databases do |t|
      t.string :filePath
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
