---
layout: default
---

<section id="intro" markdown="1">

I'm an assistant professor at the New Jersey Institute of
Technology, in the [Department of Computer Science](https://cs.njit.edu/).
You can find me most days in my office: GITC 4314; feel free to come by any
time that my [calendar][calendar] says that I'm free.

My research focuses on making software verification practical
for every developer: that is, on making verification a standard part
of every developer's toolkit, in the way that techniques
like unit testing or code review are today. My focus is primarily
on two approaches to making verification more practical:
1. improving the expressivity of simple verification technologies: making
it possible to prove more facts about a program within the constraints
that developers actually work under. Examples of this approach include
my work on accumulation analysis for resource leaks ([ESEC/FSE 2021][rlc])
and for initialization ([ICSE 2020][occ]).
2. convincing developers of the benefits of verification: by deploying
verification technologies in new domains, and by improving the usability
of verification. An example of this approach is my work on
compliance verification ([ASE 2020][cc]).

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
[calendar]: https://calendar.google.com/calendar/u/0?cid=bWprNzZAbmppdC5lZHU

</section>

{% capture this_year %} {{ 'now' | date: "%Y" }} {% endcapture %}

<section id="news">
  <h2> News </h2>
  {% for post in site.posts limit:5 %}
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

<section id="teaching">
  <h2> Teaching </h2>
  Spring 2025: <a href="teaching/cs485-sp25/">CS 485: Compilers</a> (under construction)<br>
  Fall 2024: <a href="teaching/cs490-au24/">CS 490: Guided Design in Software Engineering</a><br>
  Spring 2024: <a href="teaching/cs684-sp24/">CS 684: Testing and Quality Assurance</a><br>
  Fall 2023: <a href="teaching/cs490-au23/">CS 490: Guided Design in Software Engineering</a><br>
  Spring 2023: <a href="teaching/cs490-sp23/">CS 490: Guided Design in Software Engineering</a><br>
  Fall 2022: <a href="teaching/cs785-au22/index.html">CS 785: Practical Program Analysis</a><br>

</section>

<section id="students">

  <h2> Students and Alumni </h2>

  This section lists all of the past and present PhD students that I've supervised, and a selection of past undergraduate
  and masters students who have stayed in academia after working with me. If you're a past undergraduate or masters student
  and you think you should be on this list, send me an email.<br><br>

  <a href="https://web.njit.edu/~ks225/">Kazi Amanul Islam Siddiqui</a>, PhD student, 2023-present <br>
  <a href="https://web.njit.edu/~ea442/">Erfan Arvan</a>, PhD student, 2023-present <br>
  <a href="https://sites.google.com/ucr.edu/loinguyen">Loi Nguyen</a>, undergraduate student, 2022-2024 (starting a PhD at UC Riverside in Fall 2024)<br>
</section>

<section id="service">
  <h2> Professional Service </h2>
  Program Committee member, FSE 2025 <br>
  Sponsorship Chair, SPLASH 2024 <br>
  Program Committee member, ISSTA 2023-24 <br>
  Student Research Competition judge, ESEC/FSE 2023 <br>
  Co-chair for Student Volunteers, ISSTA 2023 <br>
  Student Research Competition judge, PLDI 2023 <br>
  External Review Committee member, OOPSLA 2022-23 <br>
  Artifact Evaluation Committee member, PLDI 2020 <br>
  Program Committee member, testing tools track, ICST 2020 <br>
  Artifact Evaluation Committee member, VMCAI 2020 <br>
</section>

<section id="funding">
  <h2> Funding </h2>
  <dl>
    {% assign grants-newest-first = site.grants | reverse %}
    {% for grant in grants-newest-first %}
      {% include grant.html grant=grant %}
    {% endfor %}
  </dl>
</section>
