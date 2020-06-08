FROM digitalpatterns/jdk

ENV PLANTUML_VERSION=1.2020.12

RUN cd /tmp && \
    yum -y update && \
    yum -y install graphviz && \
    curl -fsSLO --compressed https://repo1.maven.org/maven2/net/sourceforge/plantuml/plantuml/${PLANTUML_VERSION}/plantuml-${PLANTUML_VERSION}.jar && \
    mv plantuml-${PLANTUML_VERSION}.jar /usr/lib/plantuml.jar && \
    mkdir -p /convert/input /convert/output && \
    yum -y clean all

ENV LANG en_GB.UTF-8

WORKDIR /convert
