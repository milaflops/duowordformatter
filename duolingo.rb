#!/usr/bin/env ruby

require_relative 'word'

lines = File.read("words.tsv").split("\n").map do |line|
    line.split("\t")
end

lines.first.each.with_index do |line,index|
    puts "#{index}: #{line}"
end

words = lines[(1..-1)].map do |ary|
    Word.new(ary)
end

def group_by_section(words)
    (1..6).each do |lesson|
        section_words = words.select do |word|
            word.section == section
        end
        puts "Lesson #{lesson} (#{section_words.count} words)"
        cursor = 0
        while cursor < section_words.length
            puts section_words[(cursor...(cursor+100))].count
            section_words[(cursor...(cursor+100))].each.with_index do |word,index|
                print "#{word.char} "
                # puts "#{index+1} #{word.char}"
                # puts "#{word.char}"
            end
            puts
            cursor += 100
        end
    end

end

def group_by_lesson(words)
    last_section = 0
    last_lesson = "whatever"
    words.each do |word|
        unless word.section == last_section
            puts
            print "\n ===== SECTION #{word.section} =====\n"
            last_section = word.section
        end
            
        if word.lesson == last_lesson
            print "#{word.char} "
        else
            puts
            puts "Duolingo S#{word.section}: #{word.lesson}"
            print "#{word.char} "
        end
        last_lesson = word.lesson
    end
end

def group_by_unit(words)
  last_unit = 0
  last_lesson = "whatever"
  words.each do |word|
      unless word.unit == last_unit
          puts
          print "\n ===== UNIT #{word.unit} =====\n"
          last_unit = word.unit
      end
          
      if word.lesson == last_lesson
          print "#{word.char} "
      else
          puts
          puts "Duolingo S#{word.unit}: #{word.lesson}"
          print "#{word.char} "
      end
      last_lesson = word.lesson
  end
end

# group_by_unit(words)

last_lesson = "whatever"
words.each do |word|
  if word.lesson != last_lesson
    puts "#{word.lesson}"
  end
  last_lesson = word.lesson
end

puts
