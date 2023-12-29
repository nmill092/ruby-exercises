def substrings(string, subs)
  counter = {}
    subs.each do |substring|
      num_instances = string.downcase.scan(Regexp.new(substring.downcase)).length
      counter[substring] = num_instances if num_instances > 0
    end
  counter
end
