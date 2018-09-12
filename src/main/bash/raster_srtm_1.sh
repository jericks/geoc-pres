#!/bin/sh

# Download SRTM data for washington state
curl -O http://srtm.csi.cgiar.org/SRT-ZIP/SRTM_V41/SRTM_Data_GeoTiff/srtm_12_03.zip

# Unzip data
unzip srtm_12_03.zip

# View info
geoc raster info -i srtm_12_03.tif
