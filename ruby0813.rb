3 . class
3 . to_s
1 + 1
8 - 1
10 * 2
35 / 5
2 ** 5
5 % 3
3 & 5
3 | 5
3 ^ 5
1 +(3)
10.* 5
nil
true
false
nil . class
true . class
false . class
1 == 1
2 == 1
1 != 1
2 != 1
!nil
!false
!0
1 < 10
1 > 10
2 <= 2
2 >= 2
1 <=> 10
10 <=> 1
1 <=> 1
true && false
true || false
!ture
do_something() and do_something_else()
do_something or log_error()
'I am a string' . class
"I am a string too" class
placeholder = 'use string interpolation'
"I can #{placeholder} when using double quoted strings"
'hello ' + 'world'
'hello ' + 3
'hello ' + 3.to_s
'hello ' * 3
'hello' << ' world'
puts "I'm printing!"
print "I'm printing!"
x = 25
x
x = y = 10
x
y
snake_case = true
path_to_project_root = '/good/name/'
path = '/bad/name/'
:pending.class
status = :pending
status == :pending
status == ':pending'
status == :approved
array = [1, 2, 3, 4, 5]
[1, 'hello', false]
array[0]
array . first
array[12]
array[-1]
array . last
array[2, 3]
a=[1,2,3]
a.reverse!
array[1..3]
array << 6
array. push (6)
array.include?(1)
hash = { 'color' => 'green', 'number' => 5 }
hash.keys
hash['color']
hash['number']
hash['nothing here']
new_hash = { defcon: 3, action: true }
new_hash.keys
new_hash.key?(:defcon)
new_hash.value?(3)
if true
  'if statement'
elsif false
  'else if, optional'
else
  'else, also optional'
end

for counter in 1..5
  puts "iteration #{counter}"
end

(1..5).each do |counter|
  puts "iteration #{counter}"
end

(1..5).each { |counter| puts "iteration #{counter}" }
array.each do |element|
  puts "#{element} is part of the array"
end
hash.each do |key, value|
  puts"#{key} is #{value}"
end
array.each_with_index do |element, index|
  puts "#{element} is number #{index} in the array"
end

counter = 1
while counter  <= 5 do
  puts "iteration #{counter}"
  counter += 1
end

array = [1,2,3,4,5]
doubled = array.map do |element|
  element * 2
end
puts doubled
puts array

grade = 'B'

case grade
when 'A'
  puts 'way to go kiddo'
when 'B'
  puts 'better luck next time'
when 'C'
  puts 'you can do better'
when 'D'
  puts 'scraping through'
when 'F'
  puts 'you failed!'
else
  puts 'alternative grading system, eh?'
end

grade = 82
case grade
when 90..100
  puts 'hooray!'
when 80..90
  puts 'ok,job'
else
  puts 'you failed!'
end
begin
  raise NoMemoryError, 'you can out of memory.'
rescue NoMemoryError => exception_variable
  puts 'NoMemoryError was raised',exception_variable
rescue RuntimeError => other_exception_variable
  puts 'RuntimeError was raised now'
else
  puts 'this runs if no exceptions were thrown at all'
ensure
  puts 'this code always runs no matter what'
end
def double(x)
  x * 2
end
double(2)
double 3
double double 3

def sum(x, y)
  x + y
end
sum 3, 4
sum sum(3, 4), 5
def  surround
  puts '{'
  yield
  puts'}'
end
surround {puts 'hello world' }

def guests(&block)
  block.call  'some_argument'
end

def guests(*array)
  array.each { |guest| puts guest }
end

def foods
  ['pancake','sandwich','quesadilla']
end
breakfast, lunch, dinner = foods
breakfast
dinner

5.even?
5.odd?

company_name = "Dunder Mifflin"
company_name.upcase
company_name
company_name.upcase！
company_name

class human
  @@species = 'H sapiens'
  def initialize(name, age = 0)
    @name = name
    @age = age
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  attr_accessor :name
  attr_reader :name
  attr_writer :name
  def self.say(msg)
    puts  msg
  end

  def species
    @@species
  end
end

jim = Human.new('jim halpert')
dwight = Human.new('dwight k schrute')
jim.species
jim.name
jim.name = "jim halpert ii"
jim.name
dwight.species
dwight.name

Human ,say('hi')

$var = "I'm an instance var"
defined? $var

@var = "I'm an instance var"
defined? @var

@@var = "I'm an class var"
defined? @@var

Var = "I'm an constant"
defined? Var

class Human
  @@foo = 0
  def self.foods
    @@foo
  end

  def self.foo=(value)
    @foo = value
  end
end

class worker < Human
end

Human.foo
worker.foo

Human.foo = 2
worker.foo

class Human
  @bar = 0

  def self.bar
    @bar
  end

  def self.bar=(value)
    @bar = value
  end
end

class Doctor < Human
end

Human.bar
Doctor.bar

module ModuleExample
  def foo
    'foo'
  end
end

class Person
  include ModuleExample
end

class Book
  extend ModuleExample
end

Person.foo
Person.new.foo
Book.foo
Book.new.foo

module ConcernExample
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
  end

  module ClassMethods
    def bar
      'bar'
    end
  end

  module InstanceMethods
    def qux
      'qux'
    end
  end
end

class  Something
  include ConcernExample
end

Something.bar
Something.qux
Something.new.bar
Something.new.qux
#终于打完了
