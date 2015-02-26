class Tree

  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def initialize(options={})
    @node_name = options.keys.first
    @children = []
    hash = options[@node_name]
    unless hash.empty?
      hash.each_key do |key|
       @children << Tree.new(key => hash[key])
      end
    end
  end

  def visit_all (&block)
    visit &block
    children.each { |c| c.visit_all &block }
  end

  def visit (&block)
    block.call self
  end
end

tree_def = {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }
ruby_tree = Tree.new(tree_def)
puts ruby_tree.visit_all { |node| puts node.node_name }
