Configuration management
===

#### Note on Versioning
Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

Install `puppet`
```puppet
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```
[Puppet 5 Docs](link)

Install `puppet-lint`
```puppet-lint
$ gem install puppet-lint
```

Run It!

```puppet
$ puppet-lint /etc/puppet/modules
```

Fix Them!

```puppet
$ puppet-lint --fix /etc/puppet/modules
```

# Puppet Syntax
-----------------
>>pending...

# Configuration management
-----------------
<p>
For starters Configuration Management is also or broadly known as **server configuration management**.
It's the process of systematically handeling changes to the system while maintaining it's integrity over time.
Refring of conducting with an agreement on every point to an accpeted standard of right way in working with others
and keeping things the same.

Automation plays an essential role in server configuration management. It’s the mechanism used to make the server reach a desirable state, previously defined by provisioning scripts using a tool’s specific language and features. Automation is, in fact, the heart of configuration management for servers, and that’s why it’s common to also refer to configuration management tools as Automation Tools or IT Automation Tools.

There are a number of configuration management tools available in the market. Puppet, Ansible, Chef and Salt are popular choices.
Even though each tool have it's own uniqeness their main purpose is in the end to make sure the systems state maches the state described by your programmed scripts.

Most configuration management tools use a controller/master and node/agent model. Essentially, the controller directs the configuration of the nodes, based on a series of instructions or tasks defined in your provisioning scripts.
Overal of Configuration Management Tools Even though each CM tool has its own terms, philosophy and ecosystem, they typically share many characteristics and have similar concepts.

## Benefits of Configuration Management for Servers
Although the use of configuration management typically requires more initial planning and effort than manual system administration, all but the simplest of server infrastructures will be improved by the benefits that it provides.
</p>

1. Quick Provisioning of New Servers
<p>
Whenever a new server needs to be deployed, a configuration management tool can automate most, if not all, of the provisioning process for you. Automation makes provisioning much quicker and more efficient because it allows tedious tasks to be performed faster and more accurately than any human could. Even with proper and thorough documentation, manually deploying a web server, for instance, could take hours compared to a few minutes with configuration management/automation.
</p>
2. Quick Recovery from Critical Events
<p>
quick provisioning comes another benefit: quick recovery from critical events. If a server goes offline due to unknown circumstances, it might take several hours to properly audit the system and find out what really happened. In scenarios like this, deploying a replacement server is usually the safest way to get your services back online while a detailed inspection is done on the affected server.
</p>
3. No More Snowflake Servers
<p>
Manual system administration might be simple at first, deploying a quick fix to the server, until you come across the process is not automated.
then "*Hotfixes*" are going to be your biggest frenemies, It's hard to know exactly what is installed on a serverand which changes were made, (**DAW "It's not Automated"**).
Manual hotfixes, configuration tweaks, and software updates can turn servers into unique snowflakes, hard to manage and even harder to replicate.
</p>
4. Version Control for the Server Environment
<p>
Once you have your server setup translated into a set of provisioning scripts, you will have the ability to apply to your server environment many of the tools and workflows you normally use for software source code.
</p>
5. Replicated Environments Configuration
<p>
This enables you to effectively build a multistage ecosystem, with production, development, and testing servers. Minimizing enviroment discrepancies.
</p>

|**Most Common Features in CM Tools for Servers**| **Description** |
|:------|-----------------------------|
|Automation Framework Each CM| provides a specific syntax and a set of features that you can use to write provisioning scripts.|
|Idempotent Behavior Configuration| management tools keep track of the state of resources in order to avoid repeating tasks that were executed before.|
|System Facts Configuration| provide detailed information about the system being provisioned. This data is available through global variables, known as facts. They include things like network interfaces, IP addresses, operating system, and distribution.|
|Templating System Most CM| Templates usually support variables, loops, and conditionals that can be used to maximise versatility. For instance, you can use a template to easily set up a new virtual host within Apache, while reusing the same template for multiple server installations. Instead of having only hard-coded, static values, a template should contain placeholders for values that can change from host to host, such as `NameServer` and `DocumentRoot`.|
|Extensibility Even| Most provisioning tools will provide ways in which you can easily reuse and share smaller chunks of your provisioning setup as modules or plugins. provisioning scripts can be very specialized for the needs and demands of a particular server, there are many cases when you have similar server setups or parts of a setup that could be shared between multiple servers.|


###Infrastructure Complexity
<p>
Most configuration management tools require a minimum hierarchy consisting of a controller machine and a node that will be managed by it. Puppet, for example, requires an agent application to be installed on each node, and a master application to be installed on the controller machine.
 </p>

|-|**Puppet**|
|:----|:----:|
|**Script Language**|Custom DSL based on `Ruby`|
|**Infrastructure**|Puppet Master synchronizes configuration on Puppet Nodes|
|**Requires specialized software for nodes**|Yes|
|**Provides centralized point of control**|Yes, via Puppet Master|
|**Script Terminology**|Manifests / Modules|
|**Task Execution Order**|Non-Sequential|

## Conclusion
<p>
Configuration Management can drastically improve the integrity of servers over time by providing a framework for automating processes and keeping track of changes made to the system environment.
</p>

Resources
===
**Read or watch:**

* [Intro to Configuration Management](https://www.digitalocean.com/community/tutorials/an-introduction-to-configuration-management)
* [Getting Started: Writting `Puppet` Manifests](https://www.digitalocean.com/community/tutorials/configuration-management-101-writing-puppet-manifests)
  * [Getting Started with Puppet Code: Manifests and Modules](https://www.digitalocean.com/community/tutorials/getting-started-with-puppet-code-manifests-and-modules)
  * [Writing Manifests: TutorialPoint](https://www.tutorialspoint.com/puppet/puppet_manifest_files.htm)
* [Puppet resource type: file](https://puppet.com/docs/puppet/5.5/types/file.html)
  * [Declaring Resources](https://puppet.com/docs/puppet/7/types/overview.html#declaring-resources)
* [Puppet’s Declarative Language: Modeling Instead of Scripting](https://puppet.com/blog/puppets-declarative-language-modeling-instead-of-scripting/)
* [Puppet lint](http://puppet-lint.com/)
  * [Check: Error Messages](http://puppet-lint.com/checks/)
* [Puppet emacs mode](https://github.com/voxpupuli/puppet-mode)
* **Cheat Sheet:**
  * [Core types](https://puppet.com/docs/puppet/5.5/cheatsheet_core_types.html)
  * [Resource Type Reference](https://puppet.com/docs/puppet/5.5/type.html)
**More...**
* [Puppet String style guide](https://puppet.com/docs/puppet/5.5/puppet_strings_style.html#reference-5366)
* [Documenting modules with Puppet Strings](https://puppet.com/docs/puppet/5.5/puppet_strings.html#concept-9086)
* [Beginners Guide](https://puppet.com/docs/puppet/5.5/bgtm.html#concept-1345)
* [Admin Set up: Server side](https://puppet.com/docs/puppet/5.5/quick_start_essential_config.html)

### Requirements
**General**

* All your files will be interpreted on Ubuntu 20.04 LTS
* All your files should end with a new line
* A README.md file at the root of the folder of the project is mandatory
* Your Puppet manifests must pass puppet-lint version 2.1.1 without any errors
* Your Puppet manifests must run without error
* Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about
* Your Puppet manifests files must end with the extension .pp


