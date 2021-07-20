FROM registry.access.redhat.com/ubi8/ubi

RUN dnf install python3 gem git  -y
RUN gem install asciidoctor 
RUN gem install  asciidoctor-pdf
#
WORKDIR /var
RUN git clone https://github.com/gbenselum/whyansible.git
RUN asciidoctor whyansible.adoc
RUN dnf install httpd
RUN mv whyansible.html /var/www/index.html
RUN systemctl start httpd
