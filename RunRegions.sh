#!/bin/bash

tiles=TRUE
merge=TRUE
mosaic=TRUE
allstates=TRUE

for year in 2020 2019 2018 2017 2016 2015 2014 2013 2012

do
sbatch --job-name="SouthE$year" --export=ALL,cdlyear=$year,region='Southeast',\
mktiles=$tiles,runmerge=$merge,mosaic=$mosaic,allstates=$allstates RunMerge_in_container_bigmem_bystate.sbatch
sleep 1s

sbatch --job-name="NorthE$year" --export=ALL,cdlyear=$year,region='Northeast',\
mktiles=$tiles,runmerge=$merge,mosaic=$mosaic,allstates=$allstates RunMerge_in_container_bigmem_bystate.sbatch
sleep 1s

sbatch --job-name="MidW$year" --export=ALL,cdlyear=$year,region='Midwest',\
mktiles=$tiles,runmerge=$merge,mosaic=$mosaic,allstates=$allstates RunMerge_in_container_bigmem_bystate.sbatch
sleep 1s

sbatch --job-name="West$year" --export=ALL,cdlyear=$year,region='West',\
mktiles=$tiles,runmerge=$merge,mosaic=$mosaic,allstates=$allstates RunMerge_in_container_bigmem_bystate.sbatch
sleep 1s

done
