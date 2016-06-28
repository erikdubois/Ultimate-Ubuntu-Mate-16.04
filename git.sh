#!/bin/bash 
############################################################################
#
#                                       
#                          ./+o+-       
#                  yyyyy- -yyyyyy+      
#               ://+//////-yyyyyyo      
#           .++ .:/++++++/-.+sss/`      
#         .:++o:  /++++++++/:--:/-      
#        o:+o+:++.`..```.-/oo+++++/     
#       .:+o:+o/.          `+sssoo+/    
#  .++/+:+oo+o:`             /sssooo.   
# /+++//+:`oo+o               /::--:.   
# \+/+o+++`o++o               ++////.   
#  .++.o+++oo+:`             /dddhhh.   
#       .+.o+oo:.          `oddhhhh+    
#        \+.++o+o``-````.:ohdhhhhh+     
#         `:o+++ `ohhhhhhhhyo++os:      
#           .o:`.syhhhhhhh/.oo++o`      
#               /osyyyyyyo++ooo+++/     
#                   ````` +oo+++o\:    
#                          `oo++.      
#                                
#
#
############################################################################

#echo "# Ultimate-Ubuntu-Mate-16.04" >> README.md
#git init
#git add README.md
#git commit -m "first commit"
#git remote add origin https://github.com/erikdubois/Ultimate-Ubuntu-Mate-16.04.git
#git push -u origin master

# Below command will backup everything inside the project folder
git add --all .

echo "Write the commit comment"
read input

# Committing to the local repository with a message containing the time details
curtime=$(date)
git commit -m "Automatic Backup @ $curtime for $input"

# Push the local snapshot to a remote destination
git push -u origin master
