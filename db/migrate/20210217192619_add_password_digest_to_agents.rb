class AddPasswordDigestToAgents < ActiveRecord::Migration[6.1]
  def change
    add_column :agents, :password_digest, :string
  end
end
