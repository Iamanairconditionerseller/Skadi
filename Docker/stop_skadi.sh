#/bin/bash
set -e

# Set the value for if it should display banner with pause or not
banner=${BANNER:-true}

hello_message () {
  echo "Starting a secure dockerized container setup of Skadi"
  echo "Please ensure you have at least 8 GB RAM and 4 cores allocated to the host"
  read -n 1 -r -s -p "If you already have this configured press any key to continue... or CTRL+C to exit"
  echo ""
}

stop_docker () {
  set -x
  chmod +x grafana/grafana/setup.sh
  docker-compose stop
}


############ MAIN PROGRAM #############
if [ $banner = "true" ]
  then
    hello_message
fi
stop_docker
