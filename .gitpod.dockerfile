FROM gitpod/workspace-full:latest

USER root

RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && rm -rf packages-microsoft-prod.deb && \
    add-apt-repository universe && \
    apt-get install apt-transport-https && \
    apt-get update && apt-get -y -o APT::Install-Suggests="true" install dotnet-sdk-3.0 && \
    apt -y clean;

RUN apt-get update && \
    apt-get install tig
