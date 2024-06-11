FROM centos:7

#WORKDIR /usr/src/app
#COPY ./ .


RUN yum -y groupinstall "Development Tools"
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

