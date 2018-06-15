module Slugify

  module InstanceMethods
    def slug
      self.username.downcase.strip.gsub(' ','-').gsub(/[^\w-]/,'')
    end
  end

  module NameMethods
    def slug
      self.name.downcase.strip.gsub(' ','-').gsub(/[^\w-]/,'')
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      self.all.detect {|object| object.slug == slug}
    end
  end

end
