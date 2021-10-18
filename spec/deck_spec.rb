# Richard Tillies
# October 12, 2021
# Deck testing class
# ~/turing/1module/projects/flash_cards/spec/deck_spec.rb

require 'rspec'
require './lib/deck'
require './lib/card'

RSpec.describe Deck do
  before(:each) do
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)
  end

  it 'exists' do
    expect(@deck).to be_instance_of(Deck)
  end

  it '#count' do
    expect(@deck).to be_instance_of(Deck)
    expect(@deck.count).to eq(3)
  end

  it '#cards_in_category' do
    expect(@deck).to be_instance_of(Deck)
    expect(@deck.cards_in_category(:STEM)).to eq([@card_2, @card_3])
    expect(@deck.cards_in_category(:Geography)).to eq([@card_1])
    expect(@deck.cards_in_category("Pop Culture")).to eq([])
  end

end
