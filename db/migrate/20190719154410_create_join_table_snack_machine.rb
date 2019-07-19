class CreateJoinTableSnackMachine < ActiveRecord::Migration[5.1]
  def change
    create_join_table :snacks, :machines do |t|
      # t.index [:snack_id, :machine_id]
      # t.index [:machine_id, :snack_id]
    end
  end
end
