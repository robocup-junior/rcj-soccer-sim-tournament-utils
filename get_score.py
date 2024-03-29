#!/bin/env python3
import json, sys, os
rec_dir = sys.argv[1]
rec_dir_files = os.listdir(rec_dir)
previous_half_ident = '_-_0_-_' if len(sys.argv) == 4 else sys.argv[4]
for rec_dir_file in rec_dir_files:
  match_id = sys.argv[2]
  if match_id in rec_dir_file and previous_half_ident in rec_dir_file and '.jsonl' in rec_dir_file:
    fd = open(rec_dir + os.sep + rec_dir_file, 'r')
    lines = fd.readlines()
    line = lines[-1]
    json_obj = json.loads(line)
    side = sys.argv[3]
    print(json_obj["payload"]["score_" + side])
