describe "before and after callbacks" do

  before(:all) do
    puts 'outer before all'
  end

  before do
    puts 'outer before each'
  end

  it "outer group description" do
    puts 'running outer group spec'
  end

  describe "describing nested group" do

    before(:all) do
      puts '  inner before all'
    end

    before do
      puts '  inner before each'
    end

    it "nested group description" do
      puts '  running nested group spec'
    end

    after do
      puts '  inner after each'
    end

    after(:all) do
      puts '  inner after all'
    end
  end

  after do
    puts 'outer after each'
  end

  after(:all) do
    puts 'outer after all'
  end
end