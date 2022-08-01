# CircleCI won't let us put these in the yml file since
# the strings are too long. They suggest writing bash files
# and using the `include` syntax to run these files there.

# Clone the repository
git clone https://github.com/bullet-train-co/bullet_train.git tmp/starter

# Rename the directory of the Ruby gem being tested for the partial resolver
mv /home/circleci/project /home/circleci/$PACKAGE_NAME && \
ln -s /home/circleci/$PACKAGE_NAME /home/circleci/project
