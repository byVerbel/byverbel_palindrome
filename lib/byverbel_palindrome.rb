# frozen_string_literal: true

require_relative "byverbel_palindrome/version"

# Methods for determining whether a string is a palindrome.
module ByverbelPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse && content?
  end

  # Check if string has zero characters like "" or strings with just spaces " ", "        ", "\n", "\s", "\t", etc...
  def content?
    !processed_content.empty?
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    to_s.scan(/[a-z0-9]/i).join.downcase
  end
end

class String
  include ByverbelPalindrome
end

class Integer
  include ByverbelPalindrome
end
