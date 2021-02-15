#!/bin/env python3
import json, sys
fd = open(sys.argv[1], 'r')
lines = fd.readlines()
line = lines[-1]
json_obj = json.loads(line)
print(json_obj["payload"]["score_" + sys.argv[2]])
