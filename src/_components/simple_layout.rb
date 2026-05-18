class SimpleLayout < Bridgetown::Component
  def initialize(title:, intro: nil, eyebrow: nil, **options)
    @title = title
    @intro = intro
    @eyebrow = eyebrow
    @options = options
  end

  private

  attr_reader :title, :intro, :eyebrow
end
