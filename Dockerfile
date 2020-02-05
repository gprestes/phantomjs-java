FROM java:9

RUN apt-get -qq update && apt-get -qqy --allow-unauthenticated install --no-install-recommends \
    build-essential=12.8 \
    chrpath=0.16-2+b1 \
    libssl-dev=1.1.1d-2 \
    libxft-dev=2.3.2-2 \
    libfreetype6-dev=2.10.1-2 \
    libfreetype6=2.10.1-2 \
    libfontconfig1-dev=2.13.1-2+b1 \
    libfontconfig1=2.13.1-2+b1 && rm -rf /var/lib/apt/lists/*
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /usr/local/share/
RUN ln -s /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/
