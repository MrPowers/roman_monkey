require "spec_helper"

describe Integer do
  context "to_roman" do
    it "converts 152 to 'CLII'" do
      expect(152.to_roman).to eq "CLII"
    end

    it "converts an integer to a roman numeral" do
      expect(1904.to_roman).to eq "MCMIV"
    end

    it "converts a 4 to a 'IV'" do
      expect(4.to_roman).to eq "IV"
    end

    it "converts a 3 to a 'III'" do
      expect(3.to_roman).to eq "III"
    end

    it "converts 0 to ''" do
      expect(0.to_roman).to eq ""
    end

    it "converts 2013 to MMXIII" do
      expect(2013.to_roman).to eq "MMXIII"
    end
  end
end
