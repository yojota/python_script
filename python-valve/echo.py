from valve.source.rcon import RCON

SERVER_ADDRESS = ("doderos.jujuyweb.com", 27015)
PASSWORD = "mataelperro"

with RCON(SERVER_ADDRESS, PASSWORD) as rcon:
    print(rcon("echo Hello, world!"))