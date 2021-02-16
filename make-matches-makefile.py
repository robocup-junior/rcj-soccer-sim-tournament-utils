#!/bin/env python3

import sys
import xml.etree.ElementTree as ET

if len(sys.argv) < 3:
  exit("Usage: " + sys.argv[0] + " rcj-soccer-sys-games-export.xml Output-Makefile [optional group filter e.g. g1]")

root = ET.parse(sys.argv[1]).getroot()

games = []

def get_startnumber(team_id):
  startno = -1
  teams = root.findall('teams')[0]
  for team in teams:
    if team.attrib['id'] == team_id:
      startno = str(team.attrib['startnumber']).zfill(3)
  return startno

for league in root.findall('leagues')[0]:
  for round in league.findall('leagueRound'):
    for match in round.findall('match'):
      try:
        game = {}
        game['name'] = match.attrib['name']
        game['team1'] = get_startnumber(match.attrib['team1'])
        game['team2'] = get_startnumber(match.attrib['team2'])
        games.append(game)
      except:
        pass

if len(sys.argv) == 4:
  games = [game for game in games if sys.argv[3] in game['name']]

f = open(sys.argv[2], 'w')

f.write('all: ')
f.write(" ".join([game['name'] for game in games]))
#for game in games:
#  f.write(game['name'] + )

f.write('\n\n')

for game in games:
  f.write(game['name'] + ':\n')
  f.write('\tbash -c "MATCH_ID=' + game['name'] + ' HALF_ID=0 TEAM_B=' + game['team2'] + ' TEAM_Y=' + game['team1'] + ' ./run-docker.sh"\n')
  f.write('\tbash -c "MATCH_ID=' + game['name'] + ' HALF_ID=1 TEAM_B=' + game['team1'] + ' TEAM_Y=' + game['team2'] + \
    ' TEAM_B_INITIAL_SCORE=$$(./get_score.py ~/webots_video_out/ ' + game['name'] + ' yellow)' +\
    ' TEAM_Y_INITIAL_SCORE=$$(./get_score.py ~/webots_video_out/ ' + game['name'] + ' blue)' +\
    ' ./run-docker.sh"\n')
