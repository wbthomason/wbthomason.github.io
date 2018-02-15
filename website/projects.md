+++
date = "2016-02-22T00:22:49-05:00"
draft = false
title = "projects"
sidebar = true
url = "/projects"

+++

# Research

[unfamiliar gestures][unf]
: In 2016, I created a framework capable of inferring meaning from unfamiliar human gestures. In
interactions between humans, we frequently assume shared contextual knowledge and common grounding.
This allows us to make gestures without a guarantee that our conversational partners are familiar
with them, but maintain a reasonable level of certainty that we will be understood. Although this is
a desirable ability for human-robot interactions, current approaches to understanding gestures,
natural language, or the fusion thereof, fall short in this area. By applying techniques from
zero-shot learning to a novel frequency-domain gestural feature description, we have achieved some
success at solving this problem.

[rosbeam][rosb]
: As part of an effort to enable the Beam Remote Presence Device to be usable as a platform for
robotic development, I updated and improved upon a project to reverse engineer the Beam's motor
control interface and provide a ROS wrapper.  Starting from the [prior work][xlzrosb], this entailed
a rewriting of the primary mechanism used to enable execution of foreign code. The internals of the
Beam software had changed significantly since the original project was created, so the rewriting was
a good opportunity to also restructure the code. Doing so resulted in a much more future-proof
implementation of the original approach.  The project was fairly short and easy, and is currently
being used in the experimental verification phase of another research effort into algorithms for
social navigation.

[rosb]: https://github.com/cornell-rpal/rosbeam
[xlzrosb]: https://github.com/xlz/rosbeam
[unf]: https://github.com/cornell-rpal/unfamiliar-gestures

# Personal

I work on a large number of personal side projects. The best/most up to date list can be found at 
[my Github profile](https://github.com/wbthomason). I have highlighted a few projects below.

[bork][bork]
: bork has gone through a number of iterations of purpose, but is currently
targeted at being a robust, fast, and easy to use AUR helper. More to come as I
continue to work on the project.

[minigrade][minigrade]
: Minigrade is fundamentally a powerful, extensible autograding server. Created
originally for a class I TAed in undergrad, it sought to provide a lightweight,
secure, and fast server for grading programming assignments by running test
cases and streaming the results back to the user. In the implementation of the
test case/evaluation side of things, an interesting mechanism for describing
partial evaluation states was created and added. I'm in the process of rewriting
Minigrade in [Elixir](http://elixir-lang.org) for increased performance and
robustness.

[drunk uncle][drunkle]
: Drunk Uncle (named for the [Bobby Moynihan character][bobby]) is an automated
argument system. It started as a project at HackDuke, and was rewritten
afterward for performance and capability. Essentially, given an opinionated
statement on a subject, Drunk Uncle determines the sentiment and subject of the
statement and searches the Internet for evidence against the statement. This
evidence is then presented to the user in an insulting manner. The system is
only a novelty, and I do not recommend its use by anyone for anything, ever.
 
[ironkernel][ik]
: IronKernel was one of the first kernels written in Rust, back when the
language was in version 0.8 or so. Though it's now little more than a curiosity,
given how fast the language has evolved and the creation of more robust kernels
and operating systems (such as [redox](https://github.com/redox-os/redox)), it
was a fun project at the time, and achieved a degree of notice in the Rust
community.

[botulism][botu]
: In undergrad, I worked as a TA for a class offered both to the open Internet
and students at my university. We needed an IRC bot for the course to
communicate with students outside of the university, so, as a simple exercise, I
wrote botulism - a Python library for IRC bots and a sample bot implemented
using the library. I'm fairly certain that there are more fully-featured, robust
libraries for this purpose by now, but botulism remains one of the simplest I've
seen, and served its purpose well.

[bork]: https://github.com/wbthomason/bork
[minigrade]: https://github.com/wbthomason/minigrade
[drunkle]: https://github.com/wbthomason/drunk-uncle
[botu]: https://github.com/wbthomason/botulism
[rustl]: https://www.rust-lang.org/
[bobby]: https://www.nbc.com/saturday-night-live/cast/bobby-moynihan-15336/character/drunk-uncle-16241
[ik]: https://github.com/wbthomason/ironkernel
