#install pip install python-valve

import valve.source
import valve.source.a2s
import valve.source.master_server

address = ("doderos.jujuyweb.com", 27015)
server= valve.source.a2s.ServerQuerier(address)
info = server.info()
players = server.players()
print("{player_count}/{max_players} {server_name}".format(**info))

for player in sorted(players["players"],key=lambda p: p["score"], reverse=True):
	print("{score} {name}".format(**player))