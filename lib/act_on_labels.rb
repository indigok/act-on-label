if ENV["GITHUB_EVENT_NAME"] == "pull_request"
  payload = JSON.parse(File.read(ENV["GITHUB_EVENT_PATH"]))

  if payload["action"] == "labeled" 
    intersection = ENV["LABELS"] & payload.labels
    exit(false) if intersection.empty?
