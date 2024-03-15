class AddPositionToPortfolios < ActiveRecord::Migration[7.0]
  def change
    add_column :portfolios, :position, :integer unless column_exists?(:portfolios, :position)
  end
end
