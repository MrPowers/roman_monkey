require "spec_helper"

describe String do
  context "#to_arabic_number" do
    it "converts 'V' to 5" do
      expect("V".to_arabic_number).to eq 5
    end

    it "converts 'MCMIV' to 1904" do
      expect("MCMIV".to_arabic_number).to eq 1904
    end

    it "raises an exception for 'blah'" do
      expect{ "blah".to_arabic_number }.to raise_error
    end

    it "returns nil for empty string" do
      expect("".to_arabic_number).to be_nil
    end
  end
end
