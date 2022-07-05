# Since one of the commands checks if Standard Ruby works or not,
# this file is here so the command has something to test against.

# This is a failing test:
# def foo
#   if 1 == 1
#     bar = "bar"
#   else
#     bar = nil
#   end
# end

def foo
  bar ||= "bar"
  puts "Testing Standard Ruby with `bar`: #{bar}"
end
