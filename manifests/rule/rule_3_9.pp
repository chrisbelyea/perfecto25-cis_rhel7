class cis_rhel7::rule::rule_3_9 {

# includes Rules:
# 3.9 - Remove DNS Server (Not Scored)
# 3.10 - 3.10 Remove FTP Server (Not Scored)
# 3.11 - 3.11 Remove HTTP Server (Not Scored)
# 3.12 - 3.12 Remove Dovecot (IMAP and POP3 services) (Not Scored)
# 3.13 - 3.13 Remove Samba (Not Scored)
# 3.14 - 3.14 Remove HTTP Proxy Server (Not Scored)
# 3.15 - 3.15 Remove SNMP Server (Not Scored)

$packages = ['3.9,bind','3.10,vsftpd','3.11,httpd','3.12,dovecot','3.13,samba','3.14,squid','3.15,net-snmp']

each($packages) |$package| {

  $pkg = split($package,',')
  package { "(${pkg[0]}) - Remove ${pkg[1]}":
    name    => $pkg[1],
    ensure  => absent,
  }
}



} #EOF
