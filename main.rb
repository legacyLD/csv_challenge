require 'date'

class Record
  attr_accessor :first, :last, :gender, :color, :dob

  def initialize(opts={})
    @first = opts[:first]
    @last = opts[:last]
    @gender = format_gender(opts[:gender])
    @color = opts[:color]
    @dob = format_date(opts[:dob])
  end

  def to_s
    "#{last} #{first} #{gender} #{pretty_print_date} #{color}"
  end

  private

    def format_gender(gender)
      if gender == 'M'
        return 'Male'
      elsif gender == 'F'
        return 'Female'
      end
      gender
    end

    def format_date(date)
      delimeter = date.include?('/') ? '/' : '-'
      date = date.gsub("\n",'')
                 .split(delimeter)
                 .map{|i| i.to_i}
      return Date.new(date[2], date[0], date[1])
    end

    def pretty_print_date
      @dob.strftime('%-m/%-d/%Y')
    end

end

## Read data
@records = []

File.foreach('./sample/comma.txt') do |line|
  line = line.split(', ')
  @records.push(
    Record.new({
      first: line[1],
      last: line[0],
      gender: line[2],
      color: line[3],
      dob: line[4]
    })
  )
end

File.foreach('./sample/pipe.txt') do |line|
  line = line.split(' | ')
  @records.push(
    Record.new({
      first: line[1],
      last: line[0],
      gender: line[3],
      color: line[4],
      dob: line[5]
    })
  )
end

File.foreach('./sample/space.txt') do |line|
  line = line.split(' ')
  @records.push(
    Record.new({
      first: line[1],
      last: line[0],
      gender: line[3],
      color: line[5],
      dob: line[4]
    })
  )
end

def print_lines(arr)
  arr.each do |record|
    puts record
  end
end

## Create output
def first_output
  puts 'Output 1:'
  females = @records.select{|record| record.gender == 'Female'}
  females = females.sort{|a,b| a.last <=> b.last}
  males = @records.select{|record| record.gender == 'Male'}
  males = males.sort{|a,b| a.last <=> b.last}
  print_lines(females)
  print_lines(males)
end

def second_output
  puts 'Output 2:'
  sorted = @records.sort{|a,b| a.dob <=> b.dob}
  print_lines(sorted)
end

## Output 3
def third_output
  puts 'Output 3:'
  sorted = @records.sort{|a,b| b.last <=> a.last}
  print_lines(sorted)
end

first_output
second_output
third_output
