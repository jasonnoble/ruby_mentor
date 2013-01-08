class MultiplicationTable
  def initialize(size=9)
    @size = size
  end
  
  def header_row
    content_row(1)
  end
    
  def content
    #@content ||=
      (1..@size).map do |n|
      content_row(n)
    end
  end
  
  def to_s
    '   *' + header_row.map {|item| sprintf("%4d", item)}.join + "\n" +
    content.map.with_index do |item, index|
      content_row = item.map {|element| sprintf("%4d",element)}.join
      sprintf("%4d%s", index + 1, content_row) 
    end.join("\n") + "\n"
  end


  private

  def content_row(multiplier)
    (1..@size).map do |n|
      n * multiplier
    end
  end

end