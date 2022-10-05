#!/bin/bash
lynx --dump "https://google.com/search?&q=site:"$1"+ext:"$2"" | cut -d "=" -f2 | grep ".$2" | egrep -v "site|google" | sed s'/...$//'g
