#!/usr/bin/env ruby

require "json"

if ENV["GITHUB_EVENT_NAME"] == "pull_request"
  payload = JSON.parse(File.read(ENV["GITHUB_EVENT_PATH"]))

  if payload["action"] == "labeled" 
    puts payload["label"]
    exit(false) unless payload["label"]["name"] == ENV["LABELS"]} 
  end
end
