FROM registry.access.redhat.com/ubi8/ubi

RUN dnf install python3 gem git  -y
RUN gem install asciidoctor 
RUN gem install  asciidoctor-pdf
#
WORKDIR /var
RUN git clone https://github.com/gbenselum/whyansible.git
RUN asciidoctor ./whyansible/whyansible.adoc 
RUN dnf install httpd -y
RUN mv /var/whyansible/whyansible.html /var/www/html/index.html
EXPOSE 80
#CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
RUN /usr/sbin/httpd 
