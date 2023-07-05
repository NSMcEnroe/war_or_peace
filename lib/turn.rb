class Turn 
    attr_reader :player1, :player2, :spoils_of_war
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @spoils_of_war = []
    end
    def type
        if player1.rank_of_card_at(0) != player2.rank_of_card_at(0)
            :basic
        else :silly_goose
    end
    def winner
        case type
        when :basic
        if player1.rank_of_card_at(0) > player2.rank_of_card_at(0)
            player1
        else player2
        end
        end
    end
    def pile_cards
        case type
        when :basic
            @spoils_of_war << player1.remove_card
            @spoils_of_war << player2.remove_card
        end
    end
    def award_spoils
        @winner << @spoils_of_war
    end
end