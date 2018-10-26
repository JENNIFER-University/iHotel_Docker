@echo off

rem ------------------------------------------------------
rem -----------  Configurations  -------------------------
rem ------------------------------------------------------

rem JENNIFER AGENT Download LINK. 
set AGENT_PACKAGE=ADD_AGENT_DOWNLOAD_LINK_HERE

rem JENNIFER SERVER Download LINK. 
set SERVER_PACKAGE=ADD_SERVER_DOWNLOAD_LINK_HERE

rem ----------------------------------------------------------------------
rem -----------  Do not Edit below this line -----------------------------
rem ----------------------------------------------------------------------

docker-compose build --build-arg AGENT_PACKAGE=%AGENT_PACKAGE% --build-arg SERVER_PACKAGE=%SERVER_PACKAGE%