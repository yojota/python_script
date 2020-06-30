from re import search
with open("auth.log", "r") as f:
	log = f.read()
regex = "(.)+: FAILED su for root by [a-z]+\n"
ser = search(regex, log)

print ser