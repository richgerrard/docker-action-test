#!/bin/sh -l

COMPARRAY=( "$@" )
policyreq=false
for component in ${COMPARRAY[@]}
do
  FILE=`find ./charts/$component/templates/ -name "network.yaml" -print -quit`
  if [ -n "$FILE" ]
  then
    echo "Network Policy found for component $component"
  else
    echo "Network Policy not found for component $component"
    policyreq=true
  fi
done
echo ::set-output name=policy-required::$policyreq
