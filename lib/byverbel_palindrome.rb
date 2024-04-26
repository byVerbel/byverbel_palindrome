# frozen_string_literal: true

require_relative "byverbel_palindrome/version"

# Methods for determining whether a string is a palindrome.
class String
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    scan(/[a-z]/i).join.downcase
  end
end
