class CreateTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :transports do |t|
      t.string :title
      t.string :number

      t.timestamps
    end
  end
end
