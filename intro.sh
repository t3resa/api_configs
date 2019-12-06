#!/bin/bash +xe

CLIENT_NAME=teresa
ORG_NAME=teresa
VERSION=0.8
IP=0.0.0.0
#This is how many times you have ran the script
NUMBER=1

echo "Client Directory is made"
# CLIENT_NAME=teresa
if [[ -e ../$CLIENT_NAME ]] ; then
    break
else
  mkdir ../$CLIENT_NAME
fi
break

echo "Python script called"
#call python script here
python main_json.py

#Moving files
mv Data.json ../$CLIENT_NAME/Data.json
mv UI.json ../$CLIENT_NAME/UI.json
mv User.json ../$CLIENT_NAME/User.json
cp ../configGenerator.js ../$CLIENT_NAME

echo "Renaming JSON files to their appropriate verisons"
cd ../$CLIENT_NAME/
name1=Data
if [[ -e $name1.json ]] ; then
    i=1
    while [[ -e $name1-$i.json ]] ; do
        let i++
    done
    name11=$name1-$i
fi
touch "$name11".json
cat Data.json > "$name11".json
rm Data.json

name2=UI
if [[ -e $name2.json ]] ; then
    i=1
    while [[ -e $name2-$i.json ]] ; do
        let i++
    done
    name22=$name2-$i
fi
touch "$name22".json
cat UI.json > "$name22".json
rm UI.json

name3=User
if [[ -e $name3.json ]] ; then
    i=1
    while [[ -e $name3-$i.json ]] ; do
        let i++
    done
    name33=$name3-$i
fi
touch "$name33".json
cat User.json > "$name33".json
rm User.json

echo "Creating JSON file"
#cp $FILE_PATH/configurations_v$VERSION $FILE_PATH/configurations_v$VERSION-$CLIENT_NAME
cp ../configurations_v$VERSION.json ../$CLIENT_NAME/configurations_v$VERSION-$CLIENT_NAME.json

echo "Subsituting Organization Name"
sed -i "s|who|$ORG_NAME|" ../$CLIENT_NAME/configurations_v$VERSION-$CLIENT_NAME.json

name4=configurations_v$VERSION-$CLIENT_NAME
if [[ -e $name4.json ]] ; then
    i=1
    while [[ -e $name4-$i.json ]] ; do
        let i++
    done
    name44=$name4-$i
fi
touch "$name44".json
cat configurations_v$VERSION-$CLIENT_NAME.json > "$name44".json
rm configurations_v$VERSION-$CLIENT_NAME.json