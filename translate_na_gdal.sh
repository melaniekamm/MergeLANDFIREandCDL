#!/bin/bash
# helpful stackoverflow discussion: https://gis.stackexchange.com/questions/134084/replacing-nan-pixel-values-in-geotiff-using-gdal

gdalinfo D:/SpatialData/NASS_CDL/CDL2019/2019_30m_cdls.img

gdal_calc -A D:/SpatialData/NASS_CDL/ZippedCDL/2019_30m_cdls/2019_30m_cdls.img --outfile=D:/SpatialData/NASS_CDL/ZippedCDL/2019_30m_cdls/2019_30m_cdls_fixNA.img --calc="A" --NoDataValue=0

#gdal_translate D:/SpatialData/NASS_CDL/ZippedCDL/2019_30m_cdls/AL_output.tif D:/SpatialData/NASS_CDL/ZippedCDL/2019_30m_cdls/AL_output2.tif -a_nodata -1001