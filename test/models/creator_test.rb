require 'test_helper'

class CreatorTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "must not save a creator if name is not present" do
    creator = Creator.new(name: "Melanie", email: "melanietest@gamil.com")
    assert_equal(false, creator.save, "saved creator object without name not present")
  end

  test "must save creator if email present" do
    creator = Creator.new(email: "marytest@gamil.com")
    assert_equal(true, creator.save, "creator saved with email present")
  end
end
