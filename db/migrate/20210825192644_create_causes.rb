class CreateCauses < ActiveRecord::Migration[6.1]
    def change
        create_table :causes do |t|
            t.string        :title
            t.text          :description
            t.integer       :expected_amount
            t.belongs_to    :organization
            t.timestamps
        end
    end
end
