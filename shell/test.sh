#!/bin/bash
pwd=`pwd`
#psql -f $pwd/../sql/st_within.sql
psql -f $pwd/../sql/st_convexhull.sql
