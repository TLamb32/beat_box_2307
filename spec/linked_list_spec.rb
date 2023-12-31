require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  describe "#initialize" do
    it "exists and has readable attributes" do
      list = LinkedList.new

      expect(list).to be_a(LinkedList)
      expect(list.head).to eq(nil)
    end
  end

  describe "#append" do
    it "adds new data to the list" do
      list = LinkedList.new

      list.append("doop")

      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      
      list.append("deep")
      
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node.data).to eq("deep")
      expect(list.head.next_node).to be_a(Node)
    end
  end

  describe "#count" do
    it "will tell us how many pieces of data are in the list" do
      list = LinkedList.new

      list.append("doop")
      expect(list.count).to eq(1)
      list.append("deep")
      expect(list.count).to eq(2)
    end
  end

  describe "#to_string" do
    it "will convert the data to a string of elements" do
      list = LinkedList.new

      list.append("doop")
      list.append("deep")
      expect(list.to_string).to eq("doop deep")
    end
  end
end