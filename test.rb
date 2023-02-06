require 'test/unit'
require_relative 'run'
class TestTask3 < Test::Unit::TestCase

    def test_make_hash_object
        created_obj = Dictionary.new({ :heyo => "hello", 123 => 123, 124 => 124, 24124.23 => 1212, :hey => "0" })
        assert created_obj.instance_of? Dictionary
    end

    def test_keep_integers_type_check
        created_obj = Dictionary.new({ :heyo => "hello", 123 => 123, 124 => 124, 24124.23 => 1212, :hey => "0" })
        assert created_obj.keep_integer_keys.instance_of? Hash
    end

    def test_keep_integer_keys
        created_obj = Dictionary.new({ :heyo => "hello", 123 => 123, 124 => 124, 24124.23 => 1212, :hey => "0" })
        assert_equal({ 123 => 123, 124 => 124 }, created_obj.keep_integer_keys)
    end

    def test_delete_even_keys_type_check
        created_obj = Dictionary.new({ :heyo => "hello", 123 => 123, 124 => 124, 24124.23 => 1212, :hey => "0" })
        assert created_obj.keep_integer_keys.instance_of? Hash
    end


    def test_delete_even_keys
        created_obj1 = Dictionary.new({ :heyo => "hello", 123 => 123, 124 => 124, 24124.23 => 1212, 22424.22 => 12124, :hey => "0", 246.4 => 1234 })
        assert_equal({ :heyo => "hello", 123 => 123, 24124.23 => 1212, 22424.22 => 12124, :hey => "0", 246.4 => 1234 }, created_obj1.delete_even_keys)
    end


end
