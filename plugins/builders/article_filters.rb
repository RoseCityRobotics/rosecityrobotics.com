module Builders
  class ArticleFilters < SiteBuilder
    def build
      generator do
        articles = site.collections.articles.resources.reject { |a| a.data.unlisted }

        tag_slugs = articles.flat_map { |a| a.data.tags || [] }.uniq.sort
        author_slugs = articles.map { |a| a.data.author }.compact.uniq.sort

        tag_slugs.each do |slug|
          display = site.data.tags&.dig(slug, "name") || slug
          add_resource :pages, "article-tag-#{slug}.md" do
            layout :tag
            permalink "/articles/tag/#{slug}/"
            tag slug
            title "Articles tagged #{display}"
          end
        end

        author_slugs.each do |slug|
          display = site.data.authors&.dig(slug, "name") || slug
          add_resource :pages, "article-author-#{slug}.md" do
            layout :author
            permalink "/articles/author/#{slug}/"
            author slug
            title "Articles by #{display}"
          end
        end
      end
    end
  end
end
