# AhoCorasick.gd
extends Reference
class_name AhoCorasick

# Trie节点类
class TrieNode:
	var children: Dictionary = {}
	var fail: TrieNode = null
	var output: Array = []
	var is_end: bool = false
	
	func _init():
		children = {}
		fail = null
		output = []
		is_end = false

# 根节点
var root: TrieNode

func _init(patterns = null):
	root = TrieNode.new()
	if patterns != null:
		build(patterns)

# 构建Trie树
func build_trie(patterns: Array):
	for pattern in patterns:
		var current = root
		for c in pattern:
			if not current.children.has(c):
				current.children[c] = TrieNode.new()
			current = current.children[c]
		current.is_end = true
		current.output.append(pattern)

# 构建失败指针
func build_failure_links():
	var queue: Array = []
	
	# 初始化第一层节点的失败指针
	for child in root.children.values():
		child.fail = root
		queue.append(child)
	
	# BFS构建失败指针
	while not queue.empty():
		var current = queue.pop_front()
		
		for c in current.children.keys():
			var child = current.children[c]
			queue.append(child)
			
			# 寻找失败指针
			var temp = current.fail
			while temp != null and not temp.children.has(c):
				temp = temp.fail
			
			if temp == null:
				child.fail = root
			else:
				child.fail = temp.children[c]
			
			# 合并输出
			child.output.append_array(child.fail.output)

# 搜索匹配
func search(text: String) -> Array:
	var results: Array = []
	var current = root
	
	for i in range(text.length()):
		var c = text[i]
		
		# 如果当前节点没有对应字符的子节点，则沿着失败指针寻找
		while current != root and not current.children.has(c):
			current = current.fail
		
		# 如果找到了对应的子节点，则移动到该节点
		if current.children.has(c):
			current = current.children[c]
		
		# 检查是否有匹配的模式
		for pattern in current.output:
			var match_info = {
				"pattern": pattern,
				"start_pos": i - pattern.length() + 1,
				"end_pos": i
			}
			results.append(match_info)
	
	return results

# 一次性构建完整的AC自动机
func build(patterns: Array):
	build_trie(patterns)
	build_failure_links()

# 便捷的搜索函数
func find_all_matches(text: String, patterns: Array) -> Array:
	build(patterns)
	return search(text)
