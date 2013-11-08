require 'rspec'
require_relative '../lib/warrior'

describe 'Warrior' do

  it 'should have the right name and weapon' do
    w = Warrior.new("Simba", "Sword")
    w.weapon.should == "Sword"
    w.name.should == "Simba"
    w1 = Warrior.new("Kyle", "Hammer")
    w1.name.should == "Kyle"
    w1.weapon.should == "Hammer"

  end
end