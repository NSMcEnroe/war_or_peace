require 'rspec'
require './lib/card'
require './lib/deck'

RSpec.describe Card do
    it "exists" do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)

    expect(card2.suit).to eq(:spade)
    expect(card2.value).to eq('3')
    expect(card2.rank).to eq(3)

    cards = [card1, card2, card3]
    end
end

RSpec.describe Deck do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]
    
    deck = Deck.new(cards)

    # p deck
    # p deck.cards
    # p deck.rank_of_card_at(0)
    # p deck.rank_of_card_at(2)
    # p deck.high_ranking_cards
    # p deck.percent_high_ranking
    deck.remove_card
    # p deck.cards
    # p deck.high_ranking_cards
    # p deck.percent_high_ranking

    card4 = Card.new(:club, '5', 5)
    # p card4

    deck.add_card(card4)
    # p deck.cards
    # p deck.high_ranking_cards
    # p deck.percent_high_ranking



end

