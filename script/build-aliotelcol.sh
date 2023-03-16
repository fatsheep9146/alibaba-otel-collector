#!/bin/sh

if [ ! -f ./ocb ]; then
  curl -L "https://github.com/open-telemetry/opentelemetry-collector/releases/download/cmd%2Fbuilder%2Fv0.73.0/ocb_0.73.0_darwin_$(arch)" > ./ocb
  chmod 777 ./ocb
fi

./ocb --config cmd/aliotelcol/builder-config.yaml

echo ""
echo "Built binary location: ./cmd/aliotelcol/aliotelcol"
