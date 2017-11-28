require("minitest/autorun")
require("minitest/rg")
require_relative("../author")
require_relative("../writing_tool")

class TestAuthor < MiniTest::Test

  def setup
    @laptop = WritingTool.new("MacBook Pro", "laptop")
    @typewriter = WritingTool.new("Remington DeLuxe 5", "typewriter")
    @author = Author.new("Alice Walker", @typewriter)
    @author2 = Author.new("Jon Ronson", @laptop)
  end

  def test_author_has_name
    assert_equal("Alice Walker", @author.name())
  end

  def test_author_can_write
    assert_equal("The Psychopath Test", @author2.write("The Psychopath Test"))
  end

  def test_author_can_write_with_typewriter
    result = @author.write("New Moon")
    assert_equal("New Moon, with old school click clacking", result)
  end
end
