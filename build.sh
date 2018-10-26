#!/bin/sh

# -------------------------------------------------------
# -----------  Configurations  --------------------------
# --------------------------------------------------------

# JENNIFER AGENT Download LINK. 
AGENT_PACKAGE=ADD_AGENT_DOWNLOAD_LINK_HERE

# JENNIFER SERVER Download LINK. 
SERVER_PACKAGE=ADD_SERVER_DOWNLOAD_LINK_HERE

# ----------------------------------------------------------------------
# -----------  Do not Edit below this line -----------------------------
# ----------------------------------------------------------------------

docker-compose build --build-arg AGENT_PACKAGE=${AGENT_PACKAGE} --build-arg SERVER_PACKAGE=${SERVER_PACKAGE}