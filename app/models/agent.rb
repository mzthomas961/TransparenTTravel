class Agent < ApplicationRecord
    has_many :clients 
    has_secure_password

    def reach_bonus
        if self.clients.size >= 6
            "*Congratulations on reaching your client portfolio target! Contact HR for reward incentives!*"
        end
    end
end
