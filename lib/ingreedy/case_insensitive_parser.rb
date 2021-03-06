module Ingreedy
  module CaseInsensitiveParser

    def stri(str)
      key_chars = str.split(//)
      key_chars.
        collect! { |char| match["#{char.upcase}#{char.downcase}"] }.
        reduce(:>>)
    end

  end
end
