#import "modern-cv/lib.typ": *

// Custom function for publications
#let publication(
  title: "",
  authors: "",
  venue: "",
  date: "",
  url: none,
  description: none,
) = {
  block(below: 0.8em)[
    #if url != none [
      #link(url)[#text(size: 11pt, weight: "bold", fill: rgb("#2E86AB"))[#title]]
    ] else [
      #text(size: 11pt, weight: "bold", fill: rgb("#2E86AB"))[#title]
    ] \
    #authors \
    #if venue != "" or date != "" [
      #text(style: "italic")[#venue]#if venue != "" and date != "" [, ]#date
    ]
    #if description != none [
      #v(0.2em)
      #description
    ]
  ]
}



#show: resume.with(
  author: (
    firstname: "",
    lastname: "Smit Chaudhary",
    email: "smitchaudhary10@gmail.com",
    homepage: "https://smitchaudhary.github.io/",
    phone: "(+31) 06 1378 2478",
    github: "smitchaudhary",
    // twitter: none,
    // scholar: "",
    // orcid: "0000-0003-0243-6513",
    // birth: "January 1, 1990",
    // linkedin: "smitchaudhary",
    // address: "Rotterdam, The Netherlands",
    positions: (
      "Software Engineer",
      "Algorithms Developer",
      "Quantum Physicist",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  paper-size: "us-letter",
)

= Experience

#resume-entry(
  title: "Quantum Algorithms Researcher",
  location: "Amsterdam, The Netherlands",
  date: "Nov 2022 - Present",
  description: "Pasqal",
  title-link: "https://github.com/DeveloperPaul123",
)

#resume-item[
  - Built Quantum Scientific ML (QSciML) framework with multi-backend support (*PyTorch*, *JAX*) and advanced differentiation modes, enabling novel neural architectures for PDE solving
  - Delivered production *APIs* and *cloud SDKs* for aerospace industry partners, managing technical partnerships and translating research algorithms into industry-ready solutions
  - Implemented *distributed ML infrastructure* and experiment tracking systems using *Dask* and *MLFlow*, reducing experiment turnaround time and enabling parallel hyperparameter optimization
  - Developed dynamic growth-based training algorithms that adaptively increase model depth during training to mitigate overfitting, resulting in *research publication*
]

#resume-entry(
  title: "Quantum Computing Intern",
  location: "California, USA",
  date: "May 2022 - Sept 2022",
  description: "Menten AI",
)

#resume-item[
  - Built quantum *generative adversarial networks* (*QGANs*) in *JAX*, to solve discrete data generation tasks, implementing custom feature encoding schemes that enable learning from sparse datasets
  - Designed experiment *validation framework* with testing across multiple initializations and dataset configurations, demonstrating model performance on both synthetic and physics-based optimization tasks
  - Published *peer-reviewed research* on discrete generative modeling approaches that mitigate computational scalability limitations
]

= Education

#resume-entry(
  title: "Technische Universiteit Delft",
  location: "Delft, The Netherlands",
  date: "August 2020 - July 2022",
  description: "Master of Science in Applied Physics",
)

#resume-item[
  - *Thesis:* _Quantum Walk Based Algorithms for Qubit Mapping_

    Built combinatorial optimization algorithms in Python using constraint satisfaction and greedy routing approaches
  - *Research Project:* _Generative Adversarial Network Framework_

    Developed custom ML framework with gradient computation engine from scratch using NumPy with modular OOP architecture
  - *Relevant Coursework:* Machine Learning, Information Theory, Object-Oriented Programming (C++), Computational Physics
]

#resume-entry(
  title: "Indian Institute of Technology, Kanpur",
  location: "Kanpur, India",
  date: "July 2016 - May 2020",
  description: "Bachelor of Science in Physics",
)

#resume-item[
  - *Research Experience:* _Quantum Machine Learning algorithms research_ at IISER Kolkata
  - *Undergraduate Project:* _Bohmian Mechanics and Quantum Information_
  - *Relevant Coursework:* Fundamentals of Computing, Probability and Statistics, Mathematical Methods, Electronics
]

= Selected Publications

#publication(
  title: "Towards a Scalable Discrete Quantum Generative Adversarial Neural Network",
  authors: [#text(weight: "bold")[S. Chaudhary], P. Huembeli, I. MacCormack, T. L. Patti, J. Kossaifi, A. Galda],
  // date: "April 2023"
  url: "https://iopscience.iop.org/article/10.1088/2058-9565/acc4e4"
)

#publication(
  title: "Quantum Circuit Training with Growth-Based Architectures",
  authors: [C. Duffy, #text(weight: "bold")[S. Chaudhary], G. V. Velikova],
  // date: "Nov 2024",
  url: "https://arxiv.org/abs/2411.16560"
)

#publication(
  title: "Solving Fluid Dynamics Equations with Differentiable Quantum Circuits",
  authors: [#text(weight: "bold")[S. Chaudhary], G. T. Balducci, O. Kyriienko, P. K. Barkoutsos, L. Cardarelli, A. A. Gentile],
  // date: "May 2025",
  url: "https://juser.fz-juelich.de/record/1041810"
)

= Skills

#resume-skill-item(
  "Programming",
  (strong("Python"), strong("C/C++"), "Rust", "Julia"),
)
#resume-skill-item(
  "ML & Data Tools",
  (strong("PyTorch"), strong("JAX"), strong("NumPy"), "TensorFlow", "MLFlow", "Dask"),
)
#resume-skill-item(
  "Development Tools",
  (strong("Git"), "GitLab CI/CD", "Slurm"),
)
#resume-skill-item("Languages", (strong("English"), "Hindi", "Gujarati"))
