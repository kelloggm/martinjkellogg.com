---
layout: default
---

<section id="intro" markdown="1">

I'm a Ph.D. student at the University of Washington
[Paul G. Allen School of Computer Science & Engineering][allen].
I work in the [PLSE][] group on lightweight software verification.
My advisor is [Mike Ernst][mernst].

I am on the academic job market this cycle (2021-2022). I am
primarily interested in a research tenure-track position at an institution
within about a half-day's drive of Washington, DC.
[CV][]
[Research statement][rs]
[Teaching statement][ts]
[Diversity and Inclusion statement][deis]

My work is focused on solving practical problems
in software engineering using techniques from program analysis,
including pluggable type systems and typestate analysis.

Outside of work, I enjoy playing all kinds of games---video, tabletop,
board, etc.---skiing, watching baseball and soccer,
reading, and a little bit of tea snobbery.
Some of my favorite games include Civilization, Dungeons and
Dragons, and Dominion. I'm a big fan of the Washington Nationals
and of the Seattle Sounders. Recently I've been re-reading Robert
Jordan's Wheel of Time in preparation for the new TV show.

[allen]: https://www.cs.washington.edu
[plse]:  http://uwplse.org
[mernst]: https://homes.cs.washington.edu/~mernst/
[cf]: https://checkerframework.org/
[cv]: assets/cv.pdf
[rs]: assets/research_statement.pdf
[ts]: assets/teaching_statement.pdf
[deis]: assets/dei_statement.pdf

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
  <dl>
    {% assign bibs-newest-first = site.bib | reverse %}
    {% for paper in bibs-newest-first %}
      {% include paper.html paper=paper %}
    {% endfor %}
  </dl>
</section>
