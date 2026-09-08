# Informalization and Autoformalization: PhD Course at CSE, Chalmers/GU, 2026

Course responsible: Aarne Ranta
Co-teacher: Josef Urban

## Schedule

Time: Wednesdays 14:15 - 17:00 with the following topics:

* 9/9 Introduction, overview, and hands-on start with Informath
* 16/9 Formalizing mathematics in Dedukti
* 23/9 GF and the linguistics of mathematics 
* 30/9 Informath under the hood
* 7/10 Autoformalization with Large Language Models
* 14/10 Case studies and participant project plans
* 21/10 Participant project presentations

Location: EL43 (Linsen, EDIT building)

## Course material (to be completed during the course)

Informath: https://github.com/GrammaticalFramework/informath 

Dedukti: https://github.com/Deducteam/Dedukti

Grammatical Framework: https://www.grammaticalframework.org/ 

Autoformalization: https://arxiv.org/abs/2601.03298 

Mohan Ganesalingam, [The Language of Mathematics](https://link.springer.com/book/10.1007/978-3-642-37012-0)


## Course description

The aim of the course is to give students skills for building systems that translate between formal and informal languages in reliable and scalable ways. The intended Learning outcomes are the following:
- to develop symbolic translation methods using grammars and compiler-like methods
- to train and fine-tune neural translation methods
- to produce synthetic data for training neural translation
- to design and build systems that translate between formal and informal languages
- to evaluate the quality of these systems with numeric metrics
- to assess the proper division of labour between symbolic and neural methods

## Background

Translating between formal and informal languages is an old topic with a strong tradition at the CSE department. It has gained new interest in the efforts of enabling AI systems to solve mathematical problems. To make the solutions reliable, they can be generated in a formal language, such as Lean or Agda in the case of mathematics, but the general idea is applicable to any domain where formal representations are available. 
At the same time, the problems are often stated in informal language, and their solutions are expected to be available in informal language as well. Moreover, most of the existing training data is informal. Translating between formal and informal language is therefore needed. Neural methods such as large language models (LLMs) have been used for this purpose, but the translations they provide are not reliable. Symbolic methods such as formal grammars can be made reliable, but their scope is often too limited when formalizing human-written text. Combining neural and symbolic translation methods is therefore an active field of research, where this course aims to introduce its participants.

The course is related to the long-term research project [Informath]( https://github.com/GrammaticalFramework/informath)
and to two on-going ERC projects:
- [NextReason](https://cordis.europa.eu/project/id/101200949) 
- [MALINCA](https://malinca.gitlabpages.inria.fr/malinca.gitlab.io/index.html)



## Entrance Requirements

The course is suitable for PhD students in computer science. It requires good programming skills, as well as some familiarity with compiler techniques and formal logic. 

Also master students with such skills can be eligible for the course; the required courses are 
- Logic in Computer Science (DAT060)
- Programming Language Technology (DAT151)


## Grading criteria

For PhD students, the course is passed by a project and presentation. The default number of credits is 7.5, but a different number can be agreed on depending on the size of the project.

For MSc students, the number of credits of this elective course is 7.5. The grade if determined by the level of the project:

- 3: lab consisting of a translation system for an undergrthe aduate math theory with standard vocabulary and grammar; exact content to be specified soon
- 4: lab as for grade 3 complemented with new vocabulary and notation
- 5: lab as for grade 4 + supplementary math theory or software specification


