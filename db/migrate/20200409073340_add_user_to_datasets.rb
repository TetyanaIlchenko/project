class AddUserToDatasets < ActiveRecord::Migration[6.0]
  def change
    add_reference :datasets, :user, foreign_key: true
  end
end
