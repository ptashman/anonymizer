require "anonymizer/version"

module Anonymizer
  def self.anonymize(str)
    str.gsub(/([A-Z][\w-]*(\s+[A-Z][\w-]*)+)/, "**blocked**")
  end
end
