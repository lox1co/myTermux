#!/usr/bin/env bash

function AwesomeShot() {

  echo -e "\n‏‏‎‏‏‎ ‎ ‎‏‏‎  ‎📦 Installing AwesomeShot\n"

  stat "CHECK" "Warning" "'${COLOR_WARNING}AwesomeShot${COLOR_BASED}' Folder"
  
  if [ -d $HOME/awesomeshot ]; then

    stat "RESULT" "Success" "'${COLOR_SUCCESS}AwesomeShot${COLOR_BASED}' exist"


    cd $HOME/awesomeshot
    make install


    if [ -z awesomeshot ]; then

      stat "RESULT" "Success" "'${COLOR_SUCCESS}AwesomeShot${COLOR_BASED}' success install"

      rm -rf $HOME/awesomeshot 2> /dev/null

    else

      stat "RESULT" "Danger" "'${COLOR_DANGER}AwesomeShot${COLOR_BASED}'"

    fi

  else

    stat "RESULT" "Danger" "'${COLOR_DANGER}AwesomeShot${COLOR_BASED}' No such directory"

  fi

}

