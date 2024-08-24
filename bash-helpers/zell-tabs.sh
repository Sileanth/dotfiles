#!/usr/bin/env bash


tab_name=$(zellij action query-tab-names | fzf)

zellij action go-to-tab-name $tab_name
