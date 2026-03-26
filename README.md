
## TL;DR (Proposal)

This repository contains my Master of Computer Science research proposal on **how different Generative AI tutoring styles affect student learning and confidence calibration**.

- **Core comparison**: direct-answer tutoring vs Socratic tutoring vs reverse-tutoring (protégé effect; student teaches the AI).
- **Outcomes**: learning performance/knowledge gain, **confidence calibration** (confidence–correctness alignment), and psychological outcomes such as self-efficacy/trust.
- **Key idea**: some AI interactions can boost short-term performance while harming durable learning or inflating confidence; the proposal motivates measuring outcomes **during AI-assisted practice and after AI is removed**.

## Description:

1. Template for the Perception, Robotics and Intelligent Machines (PRIME) research group, Université de Moncton, Canada (templatePRIME.tex)
https://primeai.ca/

2. Can be used as Arxiv Template (see templateArxiv.tex).

Adapted by Moulay Akhloufi using the Arxiv style of George Kour available at https://github.com/kourgeorge/arxiv-style (last accessed: April 2021)

George Kour Arxiv style is provided under a MIT License (Copyright (c) 2020 George Kour; Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions)

## Instructions
1. For PRIME AI paper, use templatePRIME.tex with PRIMEarxiv.sty
2. For Arxiv paper, use templateArxiv.tex with PRIMEarxiv.sty
3. Remove the other template if not needed

## Build (PDF)

If you have `latexmk` installed:

```bash
latexmk -pdf templateArxiv.tex
```