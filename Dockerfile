FROM ubi8/ubi

RUN dnf install python3 gem  -y
RUN gem install asciidoctor 
RUN gem install  asciidoctor-pdf
