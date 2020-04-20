FROM kong:2.0.3-alpine

ADD ./kong.conf /etc/kong/
ADD ./kong.yml /usr/local/kong/declarative/
ADD ./plugins/handler.lua ./kong/plugins/my-plugin/
ADD ./plugins/schema.lua ./kong/plugins/my-plugin/

ENV KONG_DATABASE off
ENV KONG_DECLARATIVE_CONFIG /usr/local/kong/declarative/kong.yml

CMD ["kong", " migrations", "bootstrap"]
CMD ["kong", "start", "--v"]
