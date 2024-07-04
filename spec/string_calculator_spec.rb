
require "string_calculator"

describe StringCalculator do

  describe '.add' do

    context "given an empty string" do
       it "return 0" do
          expect(StringCalculator.add("")).to eq(0)
       end
    end
  end

end