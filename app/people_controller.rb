# frozen_string_literal: true

require 'date'
class PeopleController
  def initialize(params)
    @params = params
  end

  def normalize
    sort_list(parse_params)
  end

  private

  def parse_params
    result = []

    params.each_key do |key|
      result += translate_params(key) if key.to_s.include?('format')
    end

    result
  end

  def translate_params(key)
    prms = params[key].split("\n")
    key_indexes = find_key_indexes(prms[0], default_delimter[key])

    prms[1..-1].inject([]) do |result, row|
      row = row.split(" #{default_delimter[key]} ")

      result << {
        row[key_indexes[:first_name]] => [
          row[key_indexes[:first_name]],
          state_names(row[key_indexes[:city]]),
          Date.parse(row[key_indexes[:birthdate]]).strftime('%-m/%-d/%Y')
        ].join(', ')
      }
    end
  end

  def find_key_indexes(prm, delimitter)
    prm = prm.split(" #{delimitter} ")
    {
      first_name: prm.index('first_name'),
      city: prm.index('city'),
      birthdate: prm.index('birthdate')
    }
  end

  def default_delimter
    {
      dollar_format: '$',
      percent_format: '%'
    }
  end

  def state_names(key)
    {
      'LA' => 'Los Angeles',
      'NYC' => 'New York City'
    }[key] || key
  end

  def sort_list(prms)
    result = []

    prms.map(&:keys).flatten.sort.each do |key|
      result << prms.inject(:merge)[key]
    end

    result.flatten
  end

  attr_reader :params
end
