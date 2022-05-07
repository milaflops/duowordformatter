require_relative 'word'

class Words

  def self.lines
    lines = File.read("words.tsv").split("\n").map do |line|
      line.split("\t")
    end
    
    lines.first.each.with_index do |line,index|
        puts "#{index}: #{line}"
    end

    lines
  end

  def self.all
    lines[(1..-1)].map do |ary|
      Word.new(ary)
    end
  end
end
