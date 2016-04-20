module Transliteration
  require "active_support/inflector"
  I18n.config.available_locales = :en

  def self.change(name)
    ActiveSupport::Inflector.transliterate(name).gsub(/(\.|\-)|(  +)/," ").upcase
  end
end



