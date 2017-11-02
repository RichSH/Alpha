import json

jfile = "test.json"
f = open(jfile,'rU')
config = json.load(f)
f.close

print str(config['IP'])
print str(config['PORT'])
