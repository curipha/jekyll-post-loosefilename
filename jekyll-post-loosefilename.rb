module Jekyll
  class Post

    remove_const :MATCHER
    MATCHER = /^(.+\/)*(.*)(\.[^.]+)$/

    def process(name)
      m, cats, slug, ext = *name.match(MATCHER)

      self.date = File.mtime(relative_path)
      self.slug = slug
      self.ext = ext
    end

  end
end

