#!/bin/sh

geoc raster polygon -e -i pc_reclass.tif -o pc_reclass_poly.shp

geoc vector uniquevaluesstyle -i pc_reclass_poly.shp -f value \
    -c BoldLandUse > pc_reclass_poly.sld

geoc map draw -f pc_reclass_poly.png \
    -l "layertype=layer file=pc_reclass_poly.shp style=pc_reclass_poly.sld"