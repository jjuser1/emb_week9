cmd_/home/jjuser/working/emb_week9/dev_nr.mod := printf '%s\n'   dev_nr.o | awk '!x[$$0]++ { print("/home/jjuser/working/emb_week9/"$$0) }' > /home/jjuser/working/emb_week9/dev_nr.mod
