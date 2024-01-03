class AddUuidToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :uuid, :uuid, default: 'gen_random_uuid()', null: false
  end
end
