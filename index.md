---
layout: default
---

I'm a first-year Ph.D. student at the [University of Washington][uw] with a
focus on programming languages ([PLSE][plse]) and architecture ([Sampa][sampa]).

I'm currently working on ways to design and program
[domain-specific reconfigurable accelerators][dsra] by applying
techniques from programming languages to architecture design.

I'm also working on programming models for microfluidic chips. These
architectures promise to make labs-on-a-chip (LoCs) scalable and affordable, but
issues like high error rates, resource management, and concurrency make them
difficult to program.

[uw]:    https://www.cs.washington.edu
[plse]:  http://uwplse.org
[sampa]: https://sampa.cs.washington.edu
[dsra]:  https://sampa.cs.washington.edu/projects/sdh-project.html

## News

<section id="news">
{% for post in site.posts %}
<div class="news-item">
<div class="date"> {{ post.date | date: "%b&nbsp;%-d" }} </div>
<div class="content"> {{ post.content }} </div>
</div>
{% endfor %}
</section>

## Papers

<section id="papers">
{% for paper in site.data.papers %}
{% include paper.html paper=paper %}
{% endfor %}
</section>
