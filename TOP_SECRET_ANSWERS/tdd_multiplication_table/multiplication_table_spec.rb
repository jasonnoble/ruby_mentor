$LOAD_PATH << "."
require_relative 'multiplication_table'



describe MultiplicationTable do
  it "should be instance of multiplication table" do
    subject.should be_a(MultiplicationTable)
  end
  
  describe "#new" do
    describe "size" do
      it "has a default of 9" do
        MultiplicationTable.new.content.size.should == 9
      end
      
      it "can be smaller" do
        MultiplicationTable.new(5).content.size.should == 5
      end
      
      it "can be bigger" do
        MultiplicationTable.new(15).content.size.should == 15
      end

    end
  end
  
  describe "#header_row" do
    it "should return an array" do
      subject.header_row.should == (1..9).to_a
    end
  end
  
  describe "#content" do
    it "should contain the first row of the table" do
      subject.content[0].should == (1..9).to_a
    end
    
    it "should contain the second row of the table" do
      subject.content[1].should == (1..9).map{|n| n * 2}
    end
    
    it "should contain the ninth row" do
      subject.content[8].should == (1..9).map{|n| n * 9}
    end
    
  end
  
  describe "#to_s" do
    context "for a 9x9 table" do
      it "should look like a multiplication table" do
        expected_table = <<-EOF
             *   1   2   3   4   5   6   7   8   9
             1   1   2   3   4   5   6   7   8   9
             2   2   4   6   8  10  12  14  16  18
             3   3   6   9  12  15  18  21  24  27
             4   4   8  12  16  20  24  28  32  36
             5   5  10  15  20  25  30  35  40  45
             6   6  12  18  24  30  36  42  48  54
             7   7  14  21  28  35  42  49  56  63
             8   8  16  24  32  40  48  56  64  72
             9   9  18  27  36  45  54  63  72  81
        EOF
        MultiplicationTable.new.to_s.should == expected_table.gsub(/^\s+/, '   ')
      end
    end
    
    context "for a 5x5 table" do
      it "should look like a multiplication table" do
        expected_table = <<-EOF
             *   1   2   3   4   5
             1   1   2   3   4   5
             2   2   4   6   8  10
             3   3   6   9  12  15
             4   4   8  12  16  20
             5   5  10  15  20  25
        EOF
        MultiplicationTable.new(5).to_s.should == expected_table.gsub(/^\s+/, '   ')
      end
    end
  end
end