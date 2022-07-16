# CircleCI won't let us put these in the yml file since
# the strings are too long. They suggest writing bash files
# and using the `include` syntax to run these files there.

# Setup Super Scaffolding System Test
cd tmp/starter && bundle exec test/bin/setup-super-scaffolding-system-test

# Run Super Scaffolding Test
# At this point we should already be in `tmp/starter`
bundle exec rails test test/system/super_scaffolding_test.rb
