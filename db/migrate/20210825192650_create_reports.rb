class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
        t.string        :title
        t.text          :description
        t.integer       :quantity
        t.belongs_to    :cause
      t.timestamps
    end
  end
end
