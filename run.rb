class Dictionary
  attr_accessor :hash
  def initialize(input_hash)
    @hash = input_hash
  end

  def add_pair(key,value)
    @hash[key] = value
  end

  def keep_integer_keys()
    @hash.keep_if { |key,value| key.is_a? Integer }
  end

  def delete_even_keys()
      @hash.delete_if { |key,value|
        begin
          puts key.class
          raise "#{key} is of type #{key.class}, keeping it" unless key.is_a? Integer
        rescue => exception
          puts exception.message
          false
        else
          key % 2 == 0
        end
      }
  end

end
