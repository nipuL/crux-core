#
# /etc/mail/sendmail.mc: sendmail(8) configuration
#

OSTYPE(linux)
DOMAIN(generic)
FEATURE(`no_default_msa')
define(`confPRIVACY_FLAGS',`authwarnings,needmailhelo,novrfy,noexpn,noetrn,noverb')
# Only accept connections from localhost
DAEMON_OPTIONS(`Family=inet, Addr=127.0.0.1, Port=25, Name=MTA')
MAILER(local)
MAILER(smtp)

# End of file
