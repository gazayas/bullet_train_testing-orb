# CircleCI won't let us put these in the yml file since
# the strings are too long. They suggest writing bash files
# and using the `include` syntax to run these files there.

NAME=$(("${PACKAGE_NAME}"))

# Clone the repository
git clone https://github.com/bullet-train-co/bullet_train.git tmp/starter

# Rename the directory of the Ruby gem being tested for the partial resolver
# mv /home/circleci/project /home/circleci/$PACKAGE_NAME && \
# ln -s /home/circleci/$PACKAGE_NAME /home/circleci/project

# Use `bullet_Train` if the package is `bullet_train-base`
if [[ $NAME =~ base$ ]]; then
  NAME="bullet_train"
fi

GEM_STRING=(-lh "gem \"${NAME}\"")
GEM_STRING_WITH_PATH=(-lh "${GEM_STRING[@]}, path: \"../..\"")

# Link starter repository to the Ruby gem being tested.
grep -v "${GEM_STRING[@]}" tmp/starter/Gemfile > tmp/starter/Gemfile.tmp && \
mv tmp/starter/Gemfile.tmp tmp/starter/Gemfile && \
echo "${GEM_STRING_WITH_PATH[@]}" >> tmp/starter/Gemfile
