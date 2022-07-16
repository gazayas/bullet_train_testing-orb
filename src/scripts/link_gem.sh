NAME=$PACKAGE_NAME

GEM_STRING=("gem \"${NAME}\"")
GEM_STRING_WITH_PATH=("${GEM_STRING[@]}, path: \"../..\"")

# Link starter repository to the Ruby gem being tested.
grep -v "${GEM_STRING[@]}" tmp/starter/Gemfile > tmp/starter/Gemfile.tmp && \
mv tmp/starter/Gemfile.tmp tmp/starter/Gemfile && \
echo "${GEM_STRING_WITH_PATH[@]}" >> tmp/starter/Gemfile
