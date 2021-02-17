class AddUsernameToAgents < ActiveRecord::Migration[6.1]
  def change
    add_column :agents, :username, :string
  end
end
