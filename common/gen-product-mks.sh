#!/bin/sh

for variant in pico nano micro mini full stock super; do
  for arch in arm arm64 x86 x86_64; do
    cat opengapps.mk.template | \
      sed -e "s,@VARIANT@,${variant},g" \
          -e "s,@ARCH@,${arch},g" | \
    tee opengapps_${variant}_${arch}.mk;
  done;
done
