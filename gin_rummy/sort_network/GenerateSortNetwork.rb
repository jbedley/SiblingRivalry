#!/usr/bin/env ruby
require 'open-uri'

raise "Incorrect number of arguments (expected 1 or 2)" unless ARGV.length == 1 or ARGV.length == 2

# Array size to be sorted
n = ARGV[0].to_i

secondParam = false
if (ARGV.length == 2)
  secondParam = true
  member = ARGV[1].to_s
end

raise "parameter is invalid, expected integer from [2, 32]" unless n > 1 && n < 33
# Scrape
file = open("http://jgamble.ripco.net/cgi-bin/nw.cgi?inputs=#{n}&algorithm=best&output=macro")
contents = file.read
swaplist = contents.scan(/SWAP\(([0-9]+)\,\s([0-9]+)\)\;/) # contains array of pairs

# File header
file = "# Sorts an array of exactly #{n} elements in place\n# GenerateSortNetwork.rb  #{Time.now.iso8601}\nmodule Sort#{n}#{secondParam ? member : ""}\n  def Sort#{n}#{secondParam ? member : ""}.sort#{n} (a)\n    raise \"array is the wrong length\" unless a.length == #{n}"
# Create and append if-statements
swaplist.each { |pair|
  file << "\n    if a[#{pair[0]}]#{secondParam ? "." << member : ""} > a[#{pair[1]}]#{secondParam ? "." << member : ""}\n      a[#{pair[0]}], a[#{pair[1]}] = a[#{pair[1]}], a[#{pair[0]}]\n    end"
}

# File footer
file << "\n  end\nend"

# Write file
File.open("./Sort#{n}#{secondParam ? member : ""}.rb", 'w') { |thefile| thefile.write(file) }
