FROM redis

EXPOSE 6379
EXPOSE 26379

ADD redis.conf /etc/redis/redis.conf
ADD sentinel.conf /etc/redis/sentinel.conf

RUN chown redis:redis /etc/redis/sentinel.conf

ADD start.sh /etc/redis/start.sh
RUN chmod +x /etc/redis/start.sh

ENTRYPOINT ["/etc/redis/start.sh"]