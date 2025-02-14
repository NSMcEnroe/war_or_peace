class Deck
    attr_reader :cards
    def initialize(cards)
        @cards = cards
    end
    def rank_of_card_at(index)
        @cards[index].rank
    end
    def high_ranking_cards
        @cards.select do |card|
            card.rank >= 11
        end
    end
    def percent_high_ranking
        p_h_r = (high_ranking_cards.count.to_f / @cards.count) * 100
        p_h_r.round(2)
    end
    def remove_card
        @cards.shift
    end
    def add_card(card)
        @cards << card
    end

end
