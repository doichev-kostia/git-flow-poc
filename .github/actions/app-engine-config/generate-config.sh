#!/usr/bin/env bash

# exit when any command fails
set -e

required_env_vars=(
  service_name
  filename
)

for env_var in "${required_env_vars[@]}"; do
  if [[ -z "${!env_var}" ]]; then
    printf "Error: Required environment variable %s is not set.\n" "$env_var"
    exit 1
  fi
done

current_dir=$(dirname "$(realpath "$0")")
template="$current_dir/template.yml"

printf "Generating %s\n" "$filename"

sed "s/{{service}}/$service_name/g" "$template" > "$filename"
