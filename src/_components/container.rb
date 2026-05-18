class Container < Bridgetown::Component
  def initialize(outer_class: nil, inner_class: nil, **options)
    @outer_class = outer_class
    @inner_class = inner_class
    @options = options
  end

  private

  def outer_classes
    ["sm:px-8", @outer_class].compact.join(" ")
  end

  def inner_classes
    ["relative px-4 sm:px-8 lg:px-12", @inner_class].compact.join(" ")
  end
end
