class Article

    attr_reader :author, :magazine
    attr_accessor :title, :content

    @@all = []

    def initialize(author, magazine, title, content)
        @author = author
        @magazine = magazine
        @title = title
        @content = content
        @@all << self
    end

    def self.all
      @@all
    end
end