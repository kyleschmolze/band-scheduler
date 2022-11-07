# Band tracker
Let's track our favorite bands and where they're playing next!

```bash
$ git clone git@github.com:kyleschmolze/band-tracker.git
$ cd band-tracker
$ bundle install
$ bundle exec rspec # run the tests!
$ bundle exec rspec spec/models/band_spec.rb # only run one file
$ bundle exec rspec spec/models/band_spec.rb:10 # only run one test block
```

1. Start by completing `Band.find_by_slug` in `app/models/band.rb`
2. Write tests for it in `spec/models/band_spec.rb`
3. Use it in `app/controllers/bands_controller.rb` (show action)
4. Finish the controller tests for the show action in `spec/controllers/bands_controller_spec.rb`
5. THEN move on to the next task!
