class WritingTool

  attr_reader :name

  def initialize(name, tool_type)
    @name = name
    @tool_type = tool_type
  end

  def type(literature)
    if @tool_type == "typewriter"
       return "#{literature}, with old school click clacking"
    else
       return literature
    end
  end


end
