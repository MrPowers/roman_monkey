require "spec_helper"

describe Integer do
  context "to_roman" do
    it "converts an integer to a roman numeral" do
      expect(1904.to_roman).to eq "MCMIV"
    end

    it "converts a 4 to a 'IV'" do
      expect(4.to_roman).to eq "IV"
    end
  end
end
