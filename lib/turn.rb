class Turn 
    attr_reader :player1, :player2, :spoils_of_war
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @spoils_of_war = []
    end
    def type
        if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
            :basic
        else :war
        end
    end
    def winner
        case type
        when :basic
        if player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
            player1
        else player2
        end
        when :war
        if player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
            player1
        else player2
        end
        end
    end
    def pile_cards
        case type
        when :basic
            @spoils_of_war << player1.deck.remove_card
            @spoils_of_war << player2.deck.remove_card
        when :war
            3.times do 
                @spoils_of_war << player1.deck.remove_card
                @spoils_of_war << player2.deck.remove_card
            end
        end
    end
    def award_spoils(winner)
        spoils_of_war.each do |spoil_of_war|
            winner.deck.add_card(spoil_of_war)
        end
    end
end