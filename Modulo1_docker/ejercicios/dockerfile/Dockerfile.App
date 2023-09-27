FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /tmp

ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /tmp
COPY app .
RUN dotnet restore "MessageBroker.sln"
RUN dotnet build  -c Release -o out

FROM build AS publish
RUN dotnet publish "MessageBroker.sln" -c Release -o out

FROM base as final

WORKDIR /dotnet-config
COPY --from=publish "/tmp/out/app*.json" ./

WORKDIR /tmp
COPY --from=publish /tmp/out .
RUN rm app*.json
RUN ln -s /dotnet-config/* ./
ENV ASPNETCORE_URLS=http://+:44387
EXPOSE 44387

ENTRYPOINT ["dotnet", "MessageBroker.App.dll"]