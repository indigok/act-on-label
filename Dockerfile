FROM ruby:2.6.5

COPY lib/act_on_labels.rb /act_on_labels.rb
ENTRYPOINT ["ruby /act_on_labels.rb"]
