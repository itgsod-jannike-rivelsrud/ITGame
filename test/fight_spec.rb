require 'rspec'
require_relative '../lib/fight'
require_relative '../lib/warrior'

describe 'Starting a new fight' do

  it 'should have 2 participants' do
    f = Fight.new("", "")
    f.participants.count.should == 2
  end

  it 'should have warriors as participants' do
    f = Fight.new(SpearWarrior.new("H"), SwordWarrior.new("O"))
    f.participants.first.is_a?(Warrior).should == true
    f.participants.last.is_a?(Warrior).should == true
  end
end

#describe 'turns' do
#
#  it 'should let the Warriors punch each other' do
#    f = Fight.new(SpearWarrior.new("J"), SwordWarrior.new("L"))
#  end
#end