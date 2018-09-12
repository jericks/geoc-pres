#!/bin/bash
geoc tile generate \
  -l tiles.mbtiles \
  -m "layertype=layer file=naturalearth.gpkg layername=ocean style=ocean.sld" \
  -m "layertype=layer file=naturalearth.gpkg layername=countries style=countries.sld" \
  -s 0 \
  -e 3 \
  -v

geoc tile pyramid \
  -l tiles.mbtiles \
  -o json

geoc tile stitch raster \
  -l tiles.mbtiles \
  -o world_mercator_2.png -z 2
