## Call external command
import os
import subprocess

# Script execution without parameters
script_dir = os.path.dirname(__file__)
script_abosulte_path = os.path.join( script_dir + "/files/script.sh")
subprocess.call(['sh', script_abosulte_path])

# Script execution with parameters
param_script_abosulte_path = os.path.join( script_dir + "/files/param.sh")
subprocess.call(['sh', param_script_abosulte_path, 'param1 param2'])


## Parse JSON file
import json
import os

# Script to create absolute path of the JSON file.
script_dir = os.path.dirname(__file__)
print("The Script is located at:" + script_dir )
script_absolute_path = os.path.join(script_dir, 'files/example.json')
print("The Script Path is:" + script_absolute_path)

# Script to parse JSON

json = json.loads(open(script_absolute_path).read())
value = json['name']
print(value)

# Loop through JSON

for key in json:
    value = json[key]
    print("The key and value are ({}) = ({})".format(key, value))

# Send email
import smtplib
gmail_user = "demo@gmail.com"
gmail_password = "huma82"

sent_from = gmail_user  
to = ['demo@gmail.com', 'demo@hotmail.com']  
subject = 'OMG Super Important Message'  
body = 'Hey, what\'s up?\n\n- You'

email_text = """\  
From: %s  
To: %s  
Subject: %s

%s
""" % (sent_from, ", ".join(to), subject, body)

try:  
    server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
    server.ehlo()
    server.login(gmail_user, gmail_password)
    server.sendmail(sent_from, to, email_text)
    server.close()
    print ('successfully sent the mail')
except:
  print ("failed to send mail")

# multiple array
def getMinimumDifference(a, b):
    # Write your code here
  c=[]

  for (i, j) in zip(a, b): 
      print (i, j)
      if len(i) != len(j):
          c.append("-1")
      else:
        if(sorted(i) == sorted(j)):
          c.append("0")
        else:
          c.append("1")
  #print (c)
  return c

# anagram hackerrank leetcode
a = ["tea", "tea", "act"]
b = ["ate", "toe", "acts"]

getMinimumDifference(a, b)
