FROM FROM httpd:2.4
RUN apk add git asciidoctor
#
WORKDIR /var
RUN git clone https://github.com/gbenselum/whyansible.git
RUN asciidoctor ./whyansible/whyansible.adoc 
RUN mv /var/whyansible/whyansible.html /var/www/html/index.html
EXPOSE 80

CMD  [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
