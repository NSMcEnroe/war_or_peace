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
    

end

