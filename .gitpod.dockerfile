FROM gitpod/workspace-dotnet:latest

USER root

RUN apt-get update && \
    apt-get install tig
