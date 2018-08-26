[![Build Status](https://travis-ci.org/jhughes01/ansible-homelab.svg?branch=master)](https://travis-ci.org/jhughes01/ansible-homelab)

# Ansible config and playbooks for my homelab.

<div style="text-align:center"><img src="https://whitesmith-website.s3.amazonaws.com/2016/Feb/ansible-1456397742246.png" alt="Ansible Logo" Width="250"/></div>

I'm rebuilding my homelab, replacing my puppet infrastructure with Ansible for learning purposes. 

All my Ansible playbooks will be stored in this public repository; the intent is that this will "encourage" me to adopt best practices - particularly relating to secrets storage. 

---

## Continuous Improvement

### Test Framework

I've chosen [`molecule`](https://molecule.readthedocs.io/en/latest/ "Molecule documentation") as my primary test framework for Ansible. 

Molecule has a full test matrix from linting to integration tests using a docker driver. This extends nicely and naturally into a CI pipeline. 

I use [`Travis CI`](https://travis-ci.org/jhughes01/ansible-homelab) as it's free and open source - I could host my own Gitlab omnibus but I use Gitlab at work and Travis is different and new - so Travis it is.


### Integration Testing

Integration tests are performed using docker to exercise each role against a test node with Molecule. 

This verifies that all Ansible commands (and therefore expected end state) have run successfully.

For further testing I use [`Testinfra`](https://testinfra.readthedocs.io/en/latest/ "Testinfra documentation"). 

I do actually prefer `rspec`, but I've not used Testinfra before so it's an opportunity to learn something new. I'm also learning Python and it makes sense 
to stay with Python for all of my tooling in this project (`Ansible`, `MkDocs`, `Molecule`, `Testinfra`, etc.) to further that learning. 

### Unit Testing

---

## Continuous Deployment

TBD.