#!/bin/bash

#put peace_sans.otf in script directory

COLORS="000F37 ED2E38 85248F 00B8E0 DE7008 00AB96 CDA200 00809E AB035C 009645"

convert -size 250x250 gradient:gray90-gray75 background.png

for COLOR in $COLORS ; do 

  convert -background none -fill "#$COLOR" \
          -size 250x250  -pointsize 24  -gravity center \
          -font peace_sans.otf -pointsize 200 label:R \
          label-$COLOR-1.png

  convert label-$COLOR-1.png -crop 45x170+65+80 label-$COLOR-2.png

  convert -page +0+0 label-$COLOR-1.png -page +95+80 label-$COLOR-2.png \
          -page +0+0 background.png \
          -background none -compose DstOver -flatten $COLOR.png

done

#Colors
#Český rozhlas 000F37
#Radiožurnál ED2E38
#Dvojka 85248F
#Vltava 00B8E0
#Plus DE7008
#Region 00AB96
#Radio Wave CDA200
#Jazz 00809E
#D-dur AB035C
#Zelená vlna 009645
