convert $1 $2 -alpha off \( -clone 0,1 -compose difference -composite -separate -evaluate-sequence max -auto-level -negate \) \( -clone 0,2 -fx "v==0?0:u/v-u.p{0,0}/v+u.p{0,0}" \) -delete 0,1 +swap -compose Copy_Opacity -composite $3
rm $1
rm $2
exit