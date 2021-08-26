class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
        t.string        :media
        t.integer       :quantity
        t.belongs_to    :cause
        t.timestamps
    end
  end
end
