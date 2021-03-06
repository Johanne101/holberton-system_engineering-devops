Web stack debugging #3
===

Resources
---
* [WebstackDebugging](https://www.youtube.com/watch?v=uHEzt1QuASo)


## Intro
<p>
Debugging usually takes a big chunk of a software engineer’s time. The art of debugging is tough and it takes years, even decades to master, and that is why seasoned software engineers are the best at it… experience. They have seen lots of broken code, buggy systems, weird edge cases and race conditions.
</p>

### Concepts
<p>

- **Web Server:**
  - [wiki/web-server](https://en.wikipedia.org/wiki/Web_server)
  - [Web server: definition](https://whatis.techtarget.com/definition/Web-server)
  - [What's a web server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_web_server)
- **Web stack debugging**

![alt-text](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/9/45dffb0b1da8dc2ce47e340d7f88b05652c0f486.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220217%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220217T034509Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=7f37de4071b6d64b34e805bf7e79d12e42a917288812ef018b8e5360ccbd4c9a)


<p>
Using `strace`, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it using Puppet (instead of using Bash as you were previously doing).

Hint:

- `strace` can attach to a current running process
- You can use [`tmux`](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/) to run [`strace`](https://strace.io/) in one window and `curl` in another one
</p>

Requirements
---

**General**
```
All your files will be interpreted on Ubuntu 14.04 LTS
All your files should end with a new line
A README.md file at the root of the folder of the project is mandatory
Your Puppet manifests must pass puppet-lint version 2.1.1 without any errors
Your Puppet manifests must run without error
Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about
Your Puppet manifests files must end with the extension .pp
Files will be checked with Puppet v3.4
```

## More Info

### Install `puppet-lint`
```
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
```
