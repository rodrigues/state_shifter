module StateShifter
  class Event
    attr_reader :name, :from, :to, :guards, :callback

    def initialize from, name, to=nil, guards=nil, callback=nil
      @name = name
      @from = from
      @to = to
      @guards = [guards].flatten.compact
      @callback = callback
    end

    def has_guards?
      !@guards.nil?
    end

    def has_callback?
      !@callback.nil?
    end

    def draw(graph, options = {})
      to = @to ? @to : @from
      graph.add_edges(@from.to_s, to.to_s, :label => @name.to_s)
    end

  end
end
