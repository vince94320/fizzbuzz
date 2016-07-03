module FizzBuzz
  class << self
    def out(range: 1..100)
      range.map { |num| fizzbuzz(num) }
    end

    private

    def fizzbuzz(i)
      if fizzbuzz?(i)
        'fizzbuzz'
      elsif fizz?(i)
        'fizz'
      elsif buzz?(i)
        'buzz'
      else
        i
      end
    end

    def fizzbuzz?(i)
      fizz?(i) && buzz?(i)
    end

    def fizz?(i)
      i % 3 == 0
    end

    def buzz?(i)
      i % 5 == 0
    end
  end
end
