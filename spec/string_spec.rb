require "spec_helper"

describe String do
  context "#to_arabic" do
    it "converts a Roman numeral to an integer" do
      expect("MMCLIV".to_arabic).to eq 2_154
    end

    it "converts 'IV' to 4" do
      expect("IV".to_arabic).to eq 4
    end

    it "converts 'MMMMCMXCIX' to 4999" do
      expect("MMMMCMXCIX".to_arabic).to eq 4999
    end
  end
end
