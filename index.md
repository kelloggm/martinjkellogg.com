---
layout: default
---

<section id="intro" markdown="1">

I'm a future assistant professor at the New Jersey Institute of
Technology, in the [Department of Computer Science](https://cs.njit.edu/),
which I'll join at the beginning of the Fall 2022 semester. I am actively
recruiting students to join me at NJIT: please contact me directly
if you are interested.

My research focuses on making software verification practical
for every developer: that is, on making verification a standard part
of every developer's toolkit, in the way that techniques
like unit testing or code review are today. My focus is primarily
on two approaches to making verification more practical:
1. improving the expressivity of simple verification technologies: making
it possible to prove more facts about a program within the constraints
that developers actually work under. Examples of this approach include
my work on accumulation analysis for resource leaks ([ESEC/FSE 2021][rlc])
and for initialization([ICSE 2020][occ]).
2. convincing developers of the benefits of verification: by deploying
verification technologies in new domains, and by improving the usability
of verification. An example of this approach is my work on
compliance verification ([ASE 2020][cc]).

**I am actively recruiting students at all levels (undergraduate, masters,
PhD)** to work with me beginning in Fall 2022. If the vision of making
verification something that all programmers can use appeals to you, please
contact me directly (email is best) or apply to NJIT and mention my name in
your statement of purpose.

I completed my Ph.D. at the University of Washington
[Paul G. Allen School of Computer Science & Engineering][allen].
I worked in the [PLSE][] group under the supervision
of [Michael Ernst][mernst].

Outside of work, I enjoy playing all kinds of games---video, tabletop,
board, etc.---skiing, watching baseball and soccer,
reading, and a little bit of tea snobbery.
Some of my favorite games include Civilization, Dungeons and
Dragons, and Dominion. I'm a big fan of the Washington Nationals
and of the Seattle Sounders.

I've made my academic job market materials publicly available:
[CV][]
[Research statement][rs]
[Teaching statement][ts]
[Diversity and Inclusion statement][deis]
[Job Talk: "Verification for working developers"][jt]

[allen]: https://www.cs.washington.edu
[plse]:  http://uwplse.org
[mernst]: https://homes.cs.washington.edu/~mernst/
[cf]: https://checkerframework.org/
[cv]: assets/cv.pdf
[rs]: assets/research_statement.pdf
[ts]: assets/teaching_statement.pdf
[deis]: assets/dei_statement.pdf
[jt]: assets/job_talk.pdf
[rlc]: papers/esec-fse-2021-camera-ready-updated.pdf
[occ]: papers/ICSE2020-camera-ready.pdf
[cc]: papers/ase20-camera-ready.pdf

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
