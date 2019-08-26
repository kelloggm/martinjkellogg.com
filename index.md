---
layout: default
---

<section id="intro" markdown="1">

I'm a Ph.D. student at the University of Washington
[Paul G. Allen School of Computer Science & Engineering][allen].
I work in the [PLSE][] group on lightweight software verification.
My advisor is [Mike Ernst][mernst].

My current work is focused on building type systems on top
of the [Checker Framework][cf] to solve practical problems
in software engineering.

Outside of work, I enjoy playing games, sharing beverages with friends,
or both at the same time. Favorite games include Civilization 5, dungeons
and dragons, and Dominion. Favorite beverages include tea and absinthe.

[allen]: https://www.cs.washington.edu
[plse]:  http://uwplse.org
[mernst]: https://homes.cs.washington.edu/~mernst/
[cf]: https://checkerframework.org/

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
