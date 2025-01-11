
# Python program to explain os.chown() method  
    
# importing os module  
import os 
  
# File path 
path = "./file.txt"
  
# Print the current owner id 
# and group id of the 
# specified file path 
  
# os.stat() method will return a  
# 'stat_result’ object of 
# ‘os.stat_result’ class whose 
# 'st_uid' and 'st_gid' attributes 
# will represent owner id and group id 
# of the file respectively  
print("Owner id of the file:", os.stat(path).st_uid) 
print("Group id of the file:", os.stat(path).st_gid)  
  
  
# Change the owner id and  
# the group id of the file 
# using os.chown() method 
uid = 0
gid = 0
os.chown(path, uid, gid) 
print("\nOwner and group id of the file changed") 
  
   
# Print the owner id 
# and group id of the file 
print("\nOwner id of the file:", os.stat(path).st_uid) 
print("Group id of the file:", os.stat(path).st_gid)  

