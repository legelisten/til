#
# "return" acts different
#
def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 }

print double(l)
print "\n"

def another_double
  p = Proc.new { return 10 }
  result = p.call # unreachable
  return result * 2
end

print another_double
print "\n"

#
# "arity" acts different
#
p = Proc.new { |a, b| [a, b] }
print p.arity
print "\n"

print p.call(1, 2, 3) # everything is okay here
print "\n"

l = lambda { |a, b| [a, b] }
begin
  l.call(1, 2, 3)
rescue ArgumentError
  print "Wrong number of agrumnets here"
end
