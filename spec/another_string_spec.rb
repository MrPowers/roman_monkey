require "spec_helper"

describe String do
  context "#another_to_arabic_number" do
    it "converts 'V' to 5" do
      expect("V".another_to_arabic_number).to eq 5
    end

    it "converts 'MCMIV' to 1904" do
      expect("MCMIV".another_to_arabic_number).to eq 1904
    end

    it "converts 'MMMMCMXCIX' to 4999" do
      expect('MMMMCMXCIX'.another_to_arabic_number).to eq 4999
    end

    it "raises an exception for 'blah'" do
      expect{ "blah".another_to_arabic_number }.to raise_error
    end

    it "returns nil for empty string" do
      expect("".another_to_arabic_number).to be_nil
    end
  end
end
