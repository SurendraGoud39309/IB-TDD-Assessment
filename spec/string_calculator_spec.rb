
require "string_calculator"

describe StringCalculator do

  describe '.add' do

    context "given an empty string" do
       it "return 0" do
          expect(StringCalculator.add("")).to eq(0)
       end
    end

    context "given '2'" do
      it "returns 2" do
        expect(StringCalculator.add("2")).to eql(2)
      end
    end

    context "given '7'" do
      it "returns 7" do
        expect(StringCalculator.add("7")).to eql(7)
      end
    end
  end

end