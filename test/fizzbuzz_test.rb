require 'minitest/autorun'
require_relative '../lib/fizzbuzz'

module FizzBuzz
  class << self
    public :fizzbuzz, :fizzbuzz?, :fizz?, :buzz?
  end
end

class FizzBuzzTest < MiniTest::Test

  def setup
    @fizzbuzz_array = [ 1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz',
                        'buzz', 11, 'fizz', 13, 14, 'fizzbuzz'
                      ]
    @random_range = 1..rand(1000)
    @divide_by_3 = (1..10).map {|num| num * 3}
    @divide_by_5 = (1..10).map {|num| num * 5}
    @divide_by_15 = (1..10).map {|num| num * 15}
  end

  def test_out
    assert_equal(FizzBuzz.out(range: 1..15), @fizzbuzz_array)
    assert_equal(@divide_by_3 - FizzBuzz.out(range: @random_range),
                 @divide_by_3)
    assert_equal(@divide_by_5 - FizzBuzz.out(range: @random_range),
                 @divide_by_5)
    assert_equal(@divide_by_15 - FizzBuzz.out(range: @random_range),
                 @divide_by_15)
  end

  def test_fuzzbuzz
    assert_equal(FizzBuzz.fizzbuzz(1), 1)
    assert_equal(FizzBuzz.fizzbuzz(3), 'fizz')
    assert_equal(FizzBuzz.fizzbuzz(5), 'buzz')
    assert_equal(FizzBuzz.fizzbuzz(15), 'fizzbuzz')
  end

  def test_fuzzzbuzz?
    assert_equal(FizzBuzz.fizzbuzz?(15), true)
    assert_equal(FizzBuzz.fizzbuzz?(3), false)
    assert_equal(FizzBuzz.fizzbuzz?(5), false)
  end

  def test_fizz?
    assert_equal(FizzBuzz.fizz?(3), true)
    assert_equal(FizzBuzz.fizz?(4), false)
  end

  def test_buzz?
    assert_equal(FizzBuzz.buzz?(5), true)
    assert_equal(FizzBuzz.buzz?(6), false)
  end
end
