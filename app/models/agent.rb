class Agent < ApplicationRecord
    has_many :clients 
    has_secure_password

    def reach_bonus
        if self.clients.size >= 3
            "Congratulations on adding your third client to your portfolio! Contact HR for reward incentives."
        end
    end
end
