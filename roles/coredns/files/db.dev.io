$ORIGIN dev.io.
@       3600 IN SOA sns.dns.icann.org. noc.dns.icann.org. (
                                2017042745 ; serial
                                7200       ; refresh (2 hours)
                                3600       ; retry (1 hour)
                                1209600    ; expire (2 weeks)
                                3600       ; minimum (1 hour)
                                )

        3600 IN NS a.iana-servers.net.
        3600 IN NS b.iana-servers.net.

openshift IN  A     192.168.1.40
master    IN  A     192.168.1.40
node1     IN  A     192.168.1.41
node2     IN  A     192.168.1.42
*.apps    IN  CNAME master
www       IN  A     127.0.0.1
          IN  AAAA  ::1
