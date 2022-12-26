class AddHighlightToCause < ActiveRecord::Migration[6.1]
  def change
    add_column :causes, :highlight, :boolean, default: false
  end
end
