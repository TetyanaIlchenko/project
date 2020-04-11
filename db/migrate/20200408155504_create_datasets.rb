class CreateDatasets < ActiveRecord::Migration[6.0]
  def change
    create_table :datasets do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
