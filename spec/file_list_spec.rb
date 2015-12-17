require 'pry'
require_relative '../lib/file_list'

describe '#file_list' do
  it 'works' do
    files = {
      'a' => {
        'b' => {
          'c' => {
            'd' => {
              'e' => true
            },

            'f' => true
          }
        }
      }
    }
    expect(file_list(files)).to eq ['a/b/c/d/e', 'a/b/c/f']
  end
end
