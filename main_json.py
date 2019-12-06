import json

#Used if you CAN copy + paste from box

#############################################################
# User

data_collector1 = {}

User = "insert, | data ,|  to,  | make, | into, | a,| json,  | file"

lst = User.replace(" ", "").split("|")
print (lst)

for line in lst:
  data_collector1[line] = "text"

write_file = open('User.json', 'w')
json.dump(data_collector1, write_file, sort_keys=True, indent=2)

#############################################################
# Data

data_collector2 = {}

data = "insert, | data ,|  to,  | make, | into, | a,| json,  | file"

lst = data.replace(" ", "").split("|")
print (lst)

for line in lst:
  data_collector2[line] = "tag"

write_file = open('Data.json', 'w')
json.dump(data_collector2, write_file, sort_keys=True, indent=2)

#############################################################
# UI

data_collector3 = {}

ui = "insert,data,to,make,into,a,json,file"
lst = ui.split(",")
print (lst)

for line in lst:
  data_collector3[line] = "tag"

write_file = open('UI.json', 'w')
json.dump(data_collector3, write_file, sort_keys=True, indent=2)