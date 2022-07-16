NAME=$PACKAGE_NAME

# Use `bullet_Train` if the package is `bullet_train-base`
if [[ $NAME =~ base$ ]]; then
  NAME="bullet_train"
fi

GEM_STRING=("gem \"${NAME}\"")
GEM_STRING_WITH_PATH=("${GEM_STRING[@]}, path: \"../..\"")

# Link starter repository to the Ruby gem being tested.
grep -v "${GEM_STRING[@]}" tmp/starter/Gemfile > tmp/starter/Gemfile.tmp && \
mv tmp/starter/Gemfile.tmp tmp/starter/Gemfile && \
echo "${GEM_STRING_WITH_PATH[@]}" >> tmp/starter/Gemfile
