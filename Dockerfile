FROM registry.access.redhat.com/ubi8/ubi

RUN dnf install python3 gem git  -y
RUN gem install asciidoctor 
RUN gem install  asciidoctor-pdf
#
RUN git clone https://github.com/gbenselum/whyansible.git
