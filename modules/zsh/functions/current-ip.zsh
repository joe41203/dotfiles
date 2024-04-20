function current-ip() {
  local ip=$(ifconfig en0 | grep 'inet ' | awk '{print $2}')
  echo "Current IP address: $ip"
}
