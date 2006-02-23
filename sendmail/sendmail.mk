#
# Makefile for sendmail(8) configuration
#

all: sendmail.cf aliases.db

sendmail.cf: sendmail.mc
	m4 cf/m4/cf.m4 sendmail.mc > sendmail.cf

aliases.db: aliases
	newaliases > /dev/null

# End of file
