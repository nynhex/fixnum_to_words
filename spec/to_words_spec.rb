require_relative "spec_helper"
RSpec.describe "to_word" do
  context 'to_word' do
    it "converts 100 to `one hundred`" do
      expect(100.to_words).to eq("one hundred")
    end

    it "converts '1' to `one`" do
      expect(1.to_words).to eq("one")
    end

    it "converts '1_000' to `one thousand`" do
      expect(1_000.to_words).to eq("one thousand")
    end

    it "converts '1455' to 'one thousand four hundred and fifty five'" do
      expect(1_455.to_words).to eq("one thousand four hundred and fifty five")
    end
  end
end
