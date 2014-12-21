require './sorting_algorithms.rb'
describe Array do
  before do
  end
  it "sorts desc" do
    @list = [1,5,2,0,9,1]
    @list.insertionSortDesc
    expect(@list.isSortedDesc?).to eq(true)
  end
  it "sorts desc empty list" do
    @list = []
    @list.insertionSortDesc
    expect(@list.isSortedDesc?).to eq(true)
  end
  it "sorts desc single entry list" do
    @list = [9]
    @list.insertionSortDesc
    expect(@list.isSortedDesc?).to eq(true)
  end

  it "sorts asc" do
    @list = [1,5,2,0,9,1]
    @list.insertionSortAsc
    expect(@list.isSortedAsc?).to eq(true)
  end
  it "sorts asc empty list" do
    @list = []
    @list.insertionSortAsc
    expect(@list.isSortedAsc?).to eq(true)
  end
  it "sorts asc single entry list" do
    @list = [9]
    @list.insertionSortAsc
    expect(@list.isSortedAsc?).to eq(true)
  end
  it "selection sorts asc" do
    @list = [1,5,2,0,9,1]
    @list.selectionSort
    expect(@list.isSortedAsc?).to eq(true)
  end
  it "selection sorts asc empty list" do
    @list = []
    @list.selectionSort
    expect(@list.isSortedAsc?).to eq(true)
  end
  it "selection sorts asc single entry list" do
    @list = [9]
    @list.selectionSort
    expect(@list.isSortedAsc?).to eq(true)
  end

end
