#!/bin/bash
geoc vector centroid -i naturalearth.gpkg -l countries \
  | geoc vector voronoi -o voronoi.shp

geoc vector defaultstyle --color navy -o 0.15 \
  -i voronoi.shp > voronoi.sld

geoc map draw -f vector_voronoi.png -b "-180,-90,180,90" \
  -l "layertype=layer file=naturalearth.gpkg layername=ocean style=ocean.sld" \
  -l "layertype=layer file=naturalearth.gpkg layername=countries style=countries.sld" \
  -l "layertype=layer file=voronoi.shp layername=voronoi style=voronoi.sld"

