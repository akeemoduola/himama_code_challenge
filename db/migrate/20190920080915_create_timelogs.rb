class CreateTimelogs < ActiveRecord::Migration[5.2]
  def change
    create_table :timelogs do |t|
      t.datetime :log_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.string :log_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
