require "./lib/node"

RSpec.describe Node do
  describe "iteration 1" do
    it "exists and has readable attributes" do
      node = Node.new("plop")

      expect(node.data).to eq("plop")
    end

    it "will return the first value from the next node" do
      node = Node.new("plop")

      expect(node.next_node).to eq(nil)
    end
  end
end