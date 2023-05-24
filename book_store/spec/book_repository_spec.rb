# file: spec/book_repository_spec.rb
require 'book_repository'
RSpec.describe BookRepository do
  def reset_books_table
    seed_sql = File.read('spec/seeds_books.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
    connection.exec(seed_sql)
  end
  describe BookRepository do
    before(:each) do
      reset_books_table
    end
  end
  it 'returns list of books with their id, title and author' do
    repo = BookRepository.new
    books = repo.all
    expect(books.length).to eq(2) # => '2'
    expect(books.first.id).to eq("1") # => '1'
    expect(books.first.title).to eq("Nineteen Eighty-Four") # => 'Nineteen Eighty-Four'
    expect(books.first.author_name).to eq("George Orwell")
  end
end



