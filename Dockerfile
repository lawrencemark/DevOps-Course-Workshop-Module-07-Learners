FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN apt-get update && apt-get -y install npm
RUN mkdir app
COPY DotnetTemplate.sln ./app
COPY ./DotnetTemplate.Web ./app/DotnetTemplate.Web
COPY ./DotnetTemplate.Web.Tests ./app/DotnetTemplate.Web.Tests
COPY ./img ./app/img
WORKDIR app/DotnetTemplate.Web/
RUN npm install
RUN npm build

ENTRYPOINT ["dotnet", "run"]

