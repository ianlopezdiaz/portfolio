convert input.png -resize 512x512^ -gravity center -extent 512x512 \
\( -size 512x512 xc:none -fill white -draw "circle 256,256 256,1" \) \
-compose DstIn -composite headshot.png
