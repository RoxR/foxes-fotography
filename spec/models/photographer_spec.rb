# == Schema Information
#
# Table name: photographers
#
#  id   :integer          not null, primary key
#  name :string
#

require 'rails_helper'

RSpec.describe Photographer, type: :model do
  it 'saves when valid' do
    p = build(:photographer)
    expect(p.save).to be true
  end

  describe '#name' do
    it 'is required' do
      p = build(:photographer)
      p.name = nil
      expect(p.save).to be false
    end

    it 'should be more than 2 characters' do
      p = build(:photographer)
      p.name = 'aa'
      expect(p.save).to be false
    end
  end

  describe '#account' do
    it 'has a balance' do
      p = build(:photographer)
      expect(p.account.balance).not_to be nil
    end
  end
end
