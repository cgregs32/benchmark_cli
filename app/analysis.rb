require 'benchmark'
include Benchmark         # we need the CAPTION and FORMAT constants

array = (1..1000000).map { rand }
# Benchmark.bmbm do |x|
#     x.report("sort!") { array.dup.sort! }
#     x.report("sort")  { array.dup.sort  }
# end 



n = 50000
Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
    # tf = x.report("for:")   { for i in 1..n; a = "1"; end }
    # tt = x.report("times:") { n.times do   ; a = "1"; end }
    # tu = x.report("upto:")  { 1.upto(n) do ; a = "1"; end }
    # [tf+tt+tu, (tf+tt+tu)/3]
    sort1 = x.report("sort!") { array.dup.sort! }
    sort  = x.report("sort")  { array.dup.sort  }
    [sort+sort1] [(sort1+sort)/2]
end

echo foo bar baz