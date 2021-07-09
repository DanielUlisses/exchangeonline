FROM mcr.microsoft.com/powershell


RUN sh -c "yes | pwsh -Command 'Set-PSRepository PSGallery -InstallationPolicy Trusted'"
RUN sh -c "yes | pwsh -Command 'Install-Module -Name ExchangeOnlineManagement'"
RUN sh -c "yes | pwsh -Command 'Install-Module -Name PSWSMan'"
RUN pwsh -Command 'Install-WSMan'

CMD [ "pwsh" ]