class Word
  attr_reader :lesson, :section

  def initialize(ary)
      @section = ary[1].to_i
      @lesson = ary[2]
      @simp = ary[3]
      @trad = ary[4]忙 早上 早 上 怎麼樣 今天 怎 樣 今 天
  end

  def char
      if @trad.include?("Manual Review")
          @simp
      else
          @trad
      end
  end

  def single_char?
    char.length == 1
  end
end
