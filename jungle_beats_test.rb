equire 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beats'


class JungleBeatsTest < Minitest::Test

  def test_if_it_exists
    skip
    assert JungleBeats.new("bleep bloop bop")
  endexit

end
