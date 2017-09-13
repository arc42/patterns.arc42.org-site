#! /bin/bash
#
# helper, so you don't need to remember docker-compose syntax...

# some colors to highlight certain output
GREEN=`tput setaf 2`
RED=`tput setaf 5`
RESET=`tput sgr0`

clear

echo
echo "Docker container to develop or build this website:"
echo "=================================================="
echo
echo "Please select wether to ${GREEN}develop ${RESET} or ${RED} build ${RESET} the site:"
echo
echo "${GREEN}(d)evelop ${RESET} starts a jekyll server on port 0.0.0.0:4000,"
echo "which performs incremental builds and listens for file changes."
echo
echo "${RED}(b)uild ${RESET} builds the site with production configuration,"
echo "into zz-site directory."
echo "=================================================="
echo

read -p "Enter your selection (default: develop, d) : " choice


if [[ -z $choice ]]; then
    choice='develop'
fi

case "$choice" in
  d|D|dev|develop) echo "develop"
                   "docker-compose --file _docker-compose-dev.yml up"
                   ;;

  b|B|build)       echo "build"
                   "docker-compose --file _docker-compose-prod.yml up"
                   ;;

  # catchall: abort
  *)               echo "${RED} unknown option $choice ${RESET}, aborted."
                   exit 1
                   ;;
esac

echo "Thanx. Now running docker with ${choice} configuration."
