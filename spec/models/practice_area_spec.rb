require 'spec_helper'

describe PracticeArea do
  context 'with no practicing attorneys' do
    subject(:practice_area) { FactoryGirl.build :practice_area }

    it 'should have an attorney practices count of 0' do
      practice_area.attorney_practices.count.should == 0
    end
  end

  context 'with one practicing attorney' do
    let(:practice_area) { FactoryGirl.build :practice_area }
    let(:attorney) { FactoryGirl.build :attorney }
    let(:attorney_practice) do
      FactoryGirl.build :attorney_practice, attorney: attorney, practice_area: practice_area
    end

    it 'should have an attorney practices count of 1' do
      practice_area.attorney_practices.count.should == 1
    end
  end

  context 'with some practicing attorneys' do
    #let!(:practicing_attorney_1) { FactoryGirl.build :attorney }
    #let!(:practicing_attorney_2) { FactoryGirl.build :attorney }
    #let!(:non_practicing_attorney) { FactoryGirl.build :attorney }
    #let!(:practice_area) { FactoryGirl.build :practice_area }

    #let(:attorney_practice) do
      #FactoryGirl.build :attorney_practice,
        #attorney: practicing_attorney_1,
        #practice_area: practice_area
    #end

    #let(:attorney_practice) do
      #FactoryGirl.build :attorney_practice,
        #attorney: practicing_attorney_2,
        #practice_area: practice_area
    #end

    #it 'should have some but not all attorneys practicing it' do
      #practice_area.attorney_practices.count.should == 2
    #end
  end
end
