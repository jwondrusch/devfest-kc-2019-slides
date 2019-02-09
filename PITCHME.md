# The Serverless Startup

---?include=training/introduction/PITCHME.md

---?include=common/about/PITCHME.md

---?include=training/ground-rules/PITCHME.md

---?include=training/basics/PITCHME.md

@snap[midpoint slide-headline span-100]
# Pop Quiz!
@snapend
---

@snap[north slide-headline span-100]
## Have You Ever...
@snapend

@snap[midpoint span-80]
@ul
- Had an idea for a startup.
- Actually written code for that idea.
- Work for a startup.
- Founded a startup.
- Felt stuck, not sure where to start.
@ulend

<br/>
<br/>
#### @css[oj fragment](**Seriously**, where do you even _begin_?)

@snapend

---

@snap[north span-100]
## Once Upon a Time...
@snapend

---

@snap[span-100]
## How do you build a startup?
#### @color[#f8d026](@fa[bolt text-30])
@snapend

---

@snap[north span-100 mb-25]
## The "Right" Way
@snapend

@snap[west fragment]
#### Back-end
@ul
- Hosting/Cloud Provider
- Database
- Services
- Networking
- Scaling
@ulend
@snapend

@snap[east fragment]
#### Front-end
@ul
- Design
- Frameworks
- Performance
- Testing
- Environments
@ulend
@snapend

---
@snap[north span-100]
## See any problems?
@snapend

@snap[midpoint]
@fa[hand-paper-o text-60]
@snapend

---
@snap[north span-100]
## High Cost for Small Budgets
@snapend

@snap[midpoint]
@fa[dollar text-green text-60]@fa[dollar text-green text-60]@fa[dollar text-green text-60]
@snapend

Note:
- $200+ for 3 Production Servers to handle API requests, Queue Workers, Websockets
- $100+ for Staging to mirror production on smaller resources.
- $250+ for a Production Database
- $$$ for backups
---
@snap[north span-100]
## How to Control Costs?
@snapend

@snap[midpoint span-100]
@ol[mt-30 mb-40]
- Sustained / Committed Use
- Autoscaler
- DIY
@olend

#### @css[oj fragment](Requires commitment.<br> Are you ready for that?)
@snapend
---
@img[meme meme--overwhelmed](assets/img/overwhelmed.jpg)
---
@snap[north span-100 mb-40]
# What is @css[oj](Serverless?)
@snapend

@snap[midpoint span-100 mt-50]
## FaaS? PaaS? IaaS?
### @color[#b56969](Huh?!)
@snapend

---?include=training/show-me/PITCHME.md