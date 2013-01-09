require 'spec_helper'

describe Attorney do
  describe 'printing his name' do
    context 'with a middle name' do
      let(:attorney) do
        FactoryGirl.build :attorney, first_name: 'John', middle_name: 'Paul', last_name: 'Stevens'
      end

      it 'prints his first, middle, and last name' do
        attorney.to_s.should == 'John Paul Stevens'
      end
    end

    context 'without a middle name' do
      let(:attorney) do
        FactoryGirl.build :attorney, first_name: 'Perry', last_name: 'Mason'
      end

      it 'prints his first and last name' do
        attorney.to_s.should == 'Perry Mason'
      end
    end
  end
end
