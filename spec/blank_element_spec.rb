describe "BlankElement" do
  require 'spec_helper'

  let(:str) { Faker::Lorem.characters(10) }
  let(:original_array) { str.split('').shuffle }

  shared_examples_for "array with elements" do
    it "blank_all? returns false" do
      array.should_not be_blank_all
    end

    it "present_any? returns true" do
      array.should be_present_any
    end

    it "reject_blank returns array without blank elements" do
      array.reject_blank.should =~ original_array
    end

    it "reject_blank! removes blank elements from original array" do
      target_array = array
      target_array.reject_blank!
      target_array.should =~ original_array
    end
  end

  shared_examples_for "array full of blank elements" do
    it "blank_all? returns true" do
      array.should be_blank_all
    end

    it "present_any? returns false" do
      array.should_not be_present_any
    end

    it "reject_blank returns empty array" do
      array.reject_blank.should be_empty
    end

    it "reject_blank! removes allelements" do
      target_array = array
      target_array.reject_blank!
      target_array.should be_empty
    end
  end

  context "array with blank elements" do
    let(:array) { (str + ' ' * 3).split('').shuffle }
    it_should_behave_like 'array with elements'
  end

  context "array without blank elements" do
    let(:array) { original_array.shuffle }
    it_should_behave_like 'array with elements'
  end

  context "array with null" do
    let(:array) { original_array.push([nil] * 3).shuffle }
    it_should_behave_like 'array with elements'
  end

  context "blank array" do
    let(:array) { [' '] * 10 }
    it_should_behave_like  'array full of blank elements'
  end

  context "null array" do
    let(:array) { [nil] * 10 }
    it_should_behave_like  'array full of blank elements'
  end

  context "empty array" do
    let(:array) { [] }
    it_should_behave_like  'array full of blank elements'
  end
end
