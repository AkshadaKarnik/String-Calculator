# frozen_string_literal: true
require "rspec"
require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 for an empty string" do
      expect(subject.add("")).to eq(0)
    end

    it "returns the number for a single number string" do
      expect(subject.add("1")).to eq(1)
    end
  end
end
