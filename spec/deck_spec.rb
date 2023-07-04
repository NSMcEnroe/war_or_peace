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
    end
end