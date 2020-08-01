require_relative 'test_helper.rb'
require './lib/night_writer.rb'

class NightWriterTest < Minitest::Test

  def setup
    @night_writer = NightWriter.new
  end

  def test_it_exists
    assert_instance_of NightWriter, @night_writer
  end

  def test_it_can_convert_english_to_braille
    expected = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0..."
    actual = @night_writer.to_braille("hello world")

    puts "Expected:\n#{expected}"
    puts ""
    puts ""
    puts "Actual:\n#{@night_writer.to_braille("hello world")}"

    assert_equal expected, actual
  end
end
