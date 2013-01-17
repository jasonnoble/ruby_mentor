require "./multiplication_table.rb"

describe MultiplicationTable do
  it "should be instance of multiplication table"
  describe "#new" do
    describe "size" do
      it "has a default of 9"
      it "can be smaller"
      it "can be bigger"
    end
  end

  describe "#header_row" do
    it "should return an array ([1, 2, 3, 4, 5, 6, 7, 8, 9])"
  end

  describe "#content" do
    it "should return an array of arrays (9 rows of 9 element arrays)"
    it "should contain the first row of the table ([1, 2, 3, 4, 5, 6, 7, 8, 9])"
    it "should contain the second row of the table ([2, 4, 6, 8, 10, 12, 14, 16, 18])"
    it "should contain the ninth row ([9, 18, 27, 36, 45, 54, 63, 72, 81])"
  end

  describe "#to_s" do
    context "for a 9x9 table" do
      it "should look like a multiplication table"
    end

    context "for a 5x5 table" do
      it "should look like a multiplication table"
    end
  end
end