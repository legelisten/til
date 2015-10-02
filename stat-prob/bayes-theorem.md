# Does Naive Bayes belive in Big Foot?

There is a quite interesting, widely-using and powerful theorem in a probability theory, you should already know something about:
it's [Bayes' theorem](https://en.wikipedia.org/wiki/Bayes%27_theorem). In AI this theorem are used for ["Naive Bayes classifier" algorithm](https://en.wikipedia.org/wiki/Naive_Bayes_classifier).

_Why this theorem is interesting?_ Because in many cases of machine-learning it could give you good result and it's really simple to implement this algorithm. For example, with Naive Bayes help many spam-filtering systems are working.

_Why the hell it's "naive"?_ 

![](https://upload.wikimedia.org/wikipedia/commons/d/d4/Thomas_Bayes.gif)

Picture 1: Naive Bayes is watching you!

They say that Bayes is naive because this theorem assumes, that features are independent. Don't be too depresssed with that explanation and read example below.

Let's say we want to calculate the probability of meeting with a Big Foot in your yard.

| Description | Variable | Probability |
|-------------------|----|----|
| Independent probability of meeting a Big Foot | _x_ | 2% |
| New event: You've seen trace very similar to Big Foot |
| Probability of this event, if there was Big Foot in your yard | _y_ | 70% |
| Probability of this event, it there is no Big Foot here | _z_ | 30% |
| Posterior probability |
| Probability of meeting Big Foot in case you've seen the trace | x*y/(x*y + z(1-x)) | 1.27% |

Features here is _y_ and _z_.

So as you can see here, even if you found some trace of Big Foot, it does not make the chance to meet him greater!

The trick is to think about _y_ and _z_ as independent variables, so in this case we should imagine both universes: where we have Big Foot, and where we don't.

In the first case, in the universe where BF happily lives we can say that he could leave his trace probably in 70% of cases.

In the second case, in the universe where there is no BF creature at all, is it possible to him to leave a trace? Don't think so. But it's possible somehow to see his trace. For example you have a friend, who wants to make laught on you.

So event with a power of universe where BF exists, we can't say that seeing his trace make us more confident, that we can meet BF soon.

![](http://i.imgur.com/dvme4X9.png)
