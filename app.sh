CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$EXPECTED_BRANCH" -ne "$CURRENT_BRANCH" ]
then
  git checkout $EXPECTED_BRANCH
fi
R -e 'rmarkdown::run("src/app/app.Rmd", shiny_args = list(port = 8888, host="0.0.0.0"))'
