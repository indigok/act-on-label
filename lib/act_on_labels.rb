#!/usr/bin/env ruby

require "json"

if ENV["GITHUB_EVENT_NAME"] == "pull_request"
  payload = JSON.parse(File.read(ENV["GITHUB_EVENT_PATH"]))

  if payload["action"] == "labeled" 
    exit(false) unless payload["labels"].any? { |label| label["name"] == ENV["LABELS"]} 
  end
end
