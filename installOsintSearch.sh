#!/bin/bash
git clone https://github.com/MiyakoYakota/search.0t.rocks
cd search.0t.rocks
docker compose build; docker compose up
