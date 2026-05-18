class Header < Bridgetown::Component
  def initialize(current_path: "/", **options)
    @current_path = current_path
    @options = options
  end

  private

  attr_reader :current_path

  def navigation_items
    [
      {name: "About", href: "/about/"},
      {name: "Why It Works", href: "/why-it-works/"},
      {name: "Articles", href: "/articles/"}
    ]
  end

  def current?(href)
    return current_path == "/" if href == "/"
    current_path.start_with?(href)
  end
end
