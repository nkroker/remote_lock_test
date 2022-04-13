# Ruby Code Exercise

Write an app that:

- Read/parse people information represented in different formats

  Find a sample of each format in `spec/fixtures`

- Combine the entries from the different formats

- Sort the entries by `first_name`

- Format each entry to `<first_name>, <city>, <birth_date M/D/YYYY>`

- Write at least 2 specs, but no more than 5 - we don't expect 100% coverage

### Notes

- Create as many files/classes as you need
- Use anything you need from Ruby standard library
- Don't change files under `spec/fixtures`
- Don't change the existing functional test at `spec/functional/app_spec.rb`
- Don't use any gem to accomplish the solution
- Don't worry about invalid input data (if your solution works for the sample data, that's what we need)

## What we expect to see in your solution

- Adherence to Ruby's conventions and idioms
- Cleanliness/Clarity: Is the intent of the code obvious? Are things named appropriately? Please void overly clever solutions.
- Consistent style: We don't expect you to follow a specific Ruby code style, but you should be consistent with your choice.
- Elegant Object-oriented Design - please avoid imperative or functional coding style. Typically the good solutions will have **at least** two classes other than `PeopleController`
- Maintainability: How flexible is the code?
- Testability: Is it easy to test the code? Please demonstrate with unit tests.
- Use DRY, KISS and SOLID responsibly to find the sweet spot between an under-engineering and over-engineering.

# Instructions

1. Clone the repository, open this directory, and run `bundle install`

2. Run `bundle exec rspec`

   Notice that there is one functional test failing

3. Create a branch to work on the solution

4. Write code and unit tests until the functional test at `spec/functional/app_spec.rb` becomes green

5. Push your branch and create a pull request on GitHub
