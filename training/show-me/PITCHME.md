@snap[midpoint slide-headline span-100]
# What's the @css[oj](**Alternative?**)
@snapend
---
@snap[north slide-headline span-100]
## A Little More Crazy
@snapend

@snap[midpoint]
#### No idea?
### @css[oj](No problem!)
@snapend

Note:
- Found a job, stated on next startup
- Like many of you, bit of a tinkerer.
- Full disclosure, not completely integrated technology - but complete in peices
---
@img[meme](assets/img/probably-crazy.jpg)
---
@snap[north slide-headline span-100]
## The Essential Bits
@snapend

@snap[midpoint span-100]
@ul
- @css[oj](**Users**): Accounts, Auth
- @css[oj](**Money**): Orders, Payments, Refunds
- @css[oj](**Communication**): Content, Email Marketing
- @css[oj](**Reporting**): Success or Failure?
@ulend
@snapend
---
@snap[north slide-headline span-100]
## Nice to Haves
@snapend

@snap[midpoint span-100]
@ul
- @css[oj](**Fast**): Feels good, has value.
- @css[oj](**Scalable**): Future success demands it.
- @css[oj](**Event Driven**): Async by Design
@ulend
@snapend

---

@snap[midpoint slide-headline span-100]
# The Full Stack
@snapend
---
@snap[north slide-headline span-100]
## Front-end
@snapend

@snap[mindpoint slide-headline span-100]
### @css[oj](JAMstack)
#### [jamstack.wtf](https://jamstack.wtf/)
@snapend
---
@quote[A modern web development architecture based on client-side JavaScript, reusable APIs, and prebuilt Markup](Mathias Biilmann (CEO of Netlify)).
---
@snap[north slide-headline span-100]
## Technologies
@snapend

@snap[west process process--info w-33 fragment]
@css[text-30](@fa[react])
@css[text-06](React)
@snapend

@snap[midpoint process process--info w-33 fragment]
@css[text-30](@fa[server])
@css[text-06](Back-end)
@snapend

@snap[east process process--info w-33 fragment]
@css[text-30](@fa[react])
@css[text-06](Gatsby)
@snapend
---
@snap[north slide-headline span-100]
## Workflow
@snapend
---
@snap[north slide-headline span-100]
## Back-end
@snapend

@snap[west process process--info w-33 fragment]
@css[text-30](@fa[google])
@css[text-06](Firebase)
@snapend

@snap[midpoint process process--info w-33 fragment]
@css[text-30](@fa[refresh])
@css[text-06](Pub/Sub)
@snapend

@snap[east process process--info w-33 fragment]
@css[text-30](@fa[dollar]@fa[dollar]@fa[dollar])
@css[text-06](Serverless)
@snapend
---
@snap[north slide-headline span-100]
## Firebase Setup
@snapend
---
@snap[north slide-headline span-100]
## Pub/Sub Setup
@snapend
---
@snap[north slide-headline span-100]
## Serverless Setup
```
npm install -g serverless
serverless create --template google-nodejs --path devfest-kc
cd devfest-kc
npm install
```
@snapend
---
@snap[north slide-headline span-100]
## Serverless Setup
```yml
# serverless.yml
service: my-gcloud-service

provider:
  name: google

plugins:
  - serverless-google-cloudfunctions

functions:
  first:
    handler: myTopicPubSub
    events:
      - event:
          eventType: providers/cloud.pubsub/eventTypes/topic.publish
          resource: projects/my-devfest-kc-prod-project/topics/my-topic
```
@snapend

---
@snap[north slide-headline span-100]
## Serverless Setup
```javascript
// index.js

/**
 * Background Cloud Function to be triggered by Pub/Sub.
 * This function is exported by index.js, and executed when
 * the trigger topic receives a message.
 *
 * @param {object} event The Cloud Functions event.
 * @param {function} callback The callback function.
 */
exports.myTopicPubSub = (event, callback) => {
  const pubsubMessage = event.data;
  const name = pubsubMessage.data
    ? Buffer.from(pubsubMessage.data, 'base64').toString()
    : 'World';

  console.log(`Hello, ${name}!`);

  callback();
};
```
@snapend
