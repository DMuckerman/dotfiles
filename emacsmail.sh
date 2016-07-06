#!/bin/bash
emacsclient -c --eval "(mu4e~compose-browse-url-mail \"$@\")"
