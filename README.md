# Flatiron Blog

_An app for Flatiron students to share blog posts._

---

## Background and Overview

Flatiron Blog is an app designed to allow students at Flatiron School to share their blog posts with one another.

The goal is to create a community for students to interact with one another via their blogs and learn from each others' experiences.

Flatiron Blog is primarily built using Rails, with a Sqlite3 database using the Active Record pattern and library.

---

## Schema

User -< Blog -< Comments

#### User

- name
- email
- password

#### Blog

- title
- content
- date posted

#### Comment

- content
- date posted

---

### Basic User Functionality

[ ] User can create a new account

[ ] User can log in

[ ] User can view/update their profile

[ ] User can delete their account

### Basic Blog Functionality

[ ] User can create a new blog post

[ ] User can update their blog posts

[ ] User can delete blog posts

---

## Getting Started

Run the following commands after cloning to your local environment to get started.

- To install all dependencies

```
bundle install
```

- Run required migrations

```
rails db:migrate
```

- Seed data

```
rails db:seed
```

---

## Resources

[Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

[Tools for an Awesome README](https://github.com/matiassingers/awesome-readme)
