class Author

  attr_reader :name

  def initialize(name, writing_tool)
    @name = name
    @writing_tool = writing_tool
  end

  def write(literature)
    return @writing_tool.type(literature)
  end

end
