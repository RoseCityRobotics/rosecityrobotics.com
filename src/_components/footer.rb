class Footer < Bridgetown::Component
  def initialize(**options)
    @options = options
  end

  private

  def navigation_items
    [
      {name: "About", href: "/about/"},
      {name: "Why It Works", href: "/why-it-works/"},
      {name: "Articles", href: "/articles/"},
      {name: "Announcements", href: "/announcements/"},
      {name: "Events", href: "/events/"},
      {name: "Contact", href: "mailto:hello@rosecityrobotics.com"}
    ]
  end
end
