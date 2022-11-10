class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t| #dont forget the s in concert 
      t.string :date
      t.belongs_to :venue
      t.belongs_to :band
    end
  end
end
