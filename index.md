---
layout: default
---

<section id="intro" markdown="1">

I'm a third-year Ph.D. student at the University of Washington
[Paul G. Allen School of Computer Science & Engineering][allen].
I work between the [PLSE][], [MISL][], and [Sampa][] groups applying programming
language techniques to problems in architecture and synthetic biology.

I'm currently working on programming models for microfluidic chips. These
architectures promise to make labs-on-a-chip (LoCs) scalable and affordable, but
issues like high error rates, resource management, and concurrency make them
difficult to program. The [Puddle][] framework aims to provide a safer, easier
way to program these devices.

Outside of work, I enjoy [running][rcr], reading, and crosswords.
I (with the help of several others) maintain [crossbot][], your friendly neighborhood crossword-tracking robot.

[allen]: https://www.cs.washington.edu
[plse]:  http://uwplse.org
[sampa]: https://sampa.cs.washington.edu
[misl]:  http://misl.cs.washington.edu
[puddle]: http://misl.cs.washington.edu/projects/puddle.html
[rcr]: http://raceconditionrunning.com/
[crossbot]: https://github.com/mwillsey/crossbot

</section>

{% capture this_year %} {{ 'now' | date: "%Y" }} {% endcapture %}

<section id="news">
  <h2> News </h2>
  {% for post in site.posts %}
  <div class="news-item">
    {% capture post_year %} {{ post.date | date: "%Y" }} {% endcapture %}
    {% if post_year == this_year %}
      <div class="date"> {{ post.date | date: "%b&nbsp;%-d" }} </div>
    {% else %}
      <div class="date"> {{ post.date | date: "%Y&nbsp;%b" }} </div>
    {% endif %}
      <div class="content"> {{ post.content }} </div>
    </div>
  {% endfor %}
</section>

<section id="papers">
  <h2> Papers </h2>
  {% assign bibs-newest-first = site.bib | reverse %}
  {% for paper in bibs-newest-first %}
    {% include paper.html paper=paper %}
  {% endfor %}
</section>
