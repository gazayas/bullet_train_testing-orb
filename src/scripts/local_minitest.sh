if [[ $(("${knapsackPro}")) == true ]]; then
  export RAILS_ENV=test
  bundle exec rails "knapsack_pro:queue:minitest[--verbose]"
else
  bundle exec rails test
  bundle exec rails test:system
fi
