class CreateShortlists < ActiveRecord::Migration[5.2]
  def change
    create_table :shortlists do |t|
      t.references :user, foreign_key: true
      t.references :plot, foreign_key: true

      t.timestamps
    end
  end
end
