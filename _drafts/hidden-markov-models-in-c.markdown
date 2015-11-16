---
layout: post
title: "hidden markov models in c++"
date: 2015-07-11T23:21:23-04:00
---

In this thrilling installment of *something bloglike*, we're going to learn
about Hidden Markov Models (more succinctly referred to as HMMs). We'll
start with the math behind the model, and then work through a practical
implementation, which the Magical Wheel of Languages™ says will be in C++.
You can find the final implementation
[here](https://github.com/wbthomason/crouchingtigerhiddenmarkov).
Everything necessssary will be explained from fundamentals, so you shouldn't
need any preexisting knowledge (other than familiarity with C++) to get the gist
of the tutorial.
That said, a basic grounding in probability may help you grasp the concepts more
easily.
<!--more-->


# overview
To begin, let's imagine that you have a problem[^1].
You, a much-heralded up-and-coming middle manager at MarbleCorp™'s newest production facility,
want to get ahead in the world[^2], and snatch the promotion to upper-middle manager right out of 
Jenkins' grubby hands. It's your right, dammit![^3]
To do so, you figure you can get a leg up by devising a clever analysis of the marble selection
processes of MarbleCorp™'s biggest competitor, SphereCo Inc.™, which is renowned in the industry[^4]
for its marvelous balance of red, yellow, and blue marbles in finished bags.
However, you are also a person of honor, and simply snooping on their bagging line goes against your moral code.
"Whatever to do?", you forlornly ask yourself, eyes welling with tears.
"If only I had some mathematical model for estimating state sequence probabilities given observations of a corresponding output sequence."

Suddenly, a spark of light fills your eyes, and a grin replaces the grimace of moments before[^5].
"Ah-ha!", you exclaim, jumping to your feet, "I can use a Hidden Markov Model!"
Grinning like a madman, you hurry to your desk, and begin to work.
You've realized that - knowing, as you do[^6], the distribution of colors of marble within each of the mighty
marble silos used in the SphereCo factory, and being able to 



# the math
In the beginning was the Markov Property, and the Markov Property was good.
The Markov property (as a moderate grasp of naming conventions and foreshadowing should lead you to expect)
is really the crux of the entire family of Markov models, of which there are a fair few.

# the code

# final words
[^1]: This shouldn't be so hard to do.
[^2]: An admirable goal.
[^3]: YOURS.
[^4]: Here I presume that such an industry exists.
[^5]: You are remarkably emotive for a factory manager.
[^6]: Of course you do. Don't question it.
