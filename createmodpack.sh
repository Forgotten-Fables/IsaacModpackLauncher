if test -e $ISAACPATH/modpacks/$1.pack
then
echo "Pack $($ISAACPATH/modpacks/$1).pack already exists"
exit 1
fi
cd $ISAACPATH/mods
for dir in */; do
  (
    cd $dir
    if [ ! -e "disable.it" ]
    then
      echo ${dir%/} >> $ISAACPATH/modpacks/$1.pack
    fi
  )
done