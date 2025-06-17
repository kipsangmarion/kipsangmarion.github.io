build:
	hugo --minify

clean: 
	rm -r public

run_dev: 
	hugo server --disableFastRender -D

run: 
	hugo server

pull: 
	git pull && git submodule update --remote --merge

push: pull
	git submodule update --remote --merge
	git add . && git commit -m "Update" && git push

# make newpost post_name="face-search"
newpost:
	@mkdir -p content/posts/$(post_name)
	@echo "---" > content/posts/$(post_name)/index.md
	@echo 'title: "Title"' >> content/posts/$(post_name)/index.md
	@echo 'author: "Stephen Oduh"' >> content/posts/$(post_name)/index.md
	@echo 'authorAvatarPath: "/avatar.JPG"' >> content/posts/$(post_name)/index.md
	@echo 'date: "$(shell date +%Y-%m-%d)"' >> content/posts/$(post_name)/index.md
	@echo 'summary: "Summary"' >> content/posts/$(post_name)/index.md
	@echo 'description: "Description"' >> content/posts/$(post_name)/index.md
	@echo 'toc: true' >> content/posts/$(post_name)/index.md
	@echo 'readTime: true' >> content/posts/$(post_name)/index.md
	@echo 'autonumber: true' >> content/posts/$(post_name)/index.md
	@echo 'math: true' >> content/posts/$(post_name)/index.md
	@echo 'tags: ["tag1", "tag2"]' >> content/posts/$(post_name)/index.md
	@echo 'showTags: false' >> content/posts/$(post_name)/index.md
	@echo 'draft: true' >> content/posts/$(post_name)/index.md
	@echo "---" >> content/posts/$(post_name)/index.md
	@echo "Created post: content/posts/$(post_name)/index.md"
