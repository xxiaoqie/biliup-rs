FROM centos:7

#WORKDIR /usr/src/app
#COPY ./ .


RUN yum -y groupinstall "Development Tools"
RUN yum -y install zlib-devel
RUN curl -sO https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz \
    && tar xzf Python-3.8.12.tgz \
    && cd Python-3.8.12 \
    && ./configure --enable-optimizations \
    && make altinstall \
    && ln -s /usr/local/bin/python3.8 /usr/bin/python3 \
    && cd .. \
    && rm -rf Python-3.8.12.tgz Python-3.8.12
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH=/root/.cargo/bin:$PATH

#RUN cargo new hello --bin
#RUN cargo build --release
#RUN strip target/release/biliup
#RUN target/release/biliup

#COPY --from=build /usr/src/app/ .
#target/release/
#RUN rustc --version
#RUN rustup --help
#RUN ls -al

