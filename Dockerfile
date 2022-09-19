FROM openkbs/jdk-mvn-py3:latest

COPY entrypoint.sh /entrypoint.sh
COPY prepareRegolith.sh /prepareRegolith.sh
COPY version /version

# for testing local build, uncomment following line
# USER root

RUN apt update -y

# Add Nim
RUN apt install nim -y

# Add Deno
RUN curl -fsSL https://deno.land/x/install/install.sh | DENO_INSTALL=/deno bash
RUN ln -s /deno/bin/deno /usr/local/bin/deno

# Add dotnet
RUN curl -fsSL https://dot.net/v1/dotnet-install.sh | bash -s -- --runtime dotnet --install-dir /dotnet
RUN ln -s /dotnet/dotnet /usr/local/bin/dotnet

# Add Regolith
RUN /prepareRegolith.sh

ENTRYPOINT ["/entrypoint.sh"]