if [[ $(("${KNAPSACK_PRO}")) == true ]]; then
  echo "Running tests with Knapsack Pro."
  export RAILS_ENV=test
  bundle exec rails "knapsack_pro:queue:minitest[--verbose]"
else
  echo "Running tests without Knapsack Pro."
  bundle exec rails test
  bundle exec rails test:system
fi
