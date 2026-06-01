convert input-00.png -resize 512x512^ -gravity center -extent 512x512 \
\( -size 512x512 xc:none -fill white -draw "circle 256,256 256,1" \) \
-compose DstIn -composite headshot-00.png

convert input-01.png -resize 512x512^ -gravity center -extent 512x512 \
\( -size 512x512 xc:none -fill white -draw "circle 256,256 256,1" \) \
-compose DstIn -composite headshot-01.png

convert input-02.png -resize 512x512^ -gravity center -extent 512x512 \
\( -size 512x512 xc:none -fill white -draw "circle 256,256 256,1" \) \
-compose DstIn -composite headshot-02.png

convert input-03.png -resize 512x512^ -gravity center -extent 512x512 \
\( -size 512x512 xc:none -fill white -draw "circle 256,256 256,1" \) \
-compose DstIn -composite headshot-03.png

convert input-04.png -resize 512x512^ -gravity center -extent 512x512 \
\( -size 512x512 xc:none -fill white -draw "circle 256,256 256,1" \) \
-compose DstIn -composite headshot-04.png
