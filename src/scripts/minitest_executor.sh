# Run tests in tmp/starter if we're checking the Starter Repo
if [[ $(("${STARTER_REPO}")) == 1 ]]; then
  cd tmp/starter || exit
fi

# 1 Represents `true` in this case
if [[ $(("${KNAPSACK_PRO}")) == 1 ]]; then
  echo "Running tests with Knapsack Pro."
  export RAILS_ENV=test
  bundle exec rails "knapsack_pro:queue:minitest[--verbose]"
else
  echo "Running tests without Knapsack Pro."
  bundle exec rails test
  bundle exec rails test:system
fi
