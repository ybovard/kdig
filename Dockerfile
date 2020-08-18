FROM cznic/knot:latest

RUN /usr/sbin/useradd -u 1000 -d /tmp kdig

USER 1000

ENTRYPOINT ["/bin/kdig"]
CMD ["example.com", "SOA"]
