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
    #text(style: "italic")[#venue], #date
    #if description != none [
      #v(0.2em)
      #description
    ]
  ]
}



#show: resume.with(
  author: (
    firstname: "Smit",
    lastname: "Chaudhary",
    email: "smitchaudhary10@gmail.com",
    homepage: "https://smitchaudhary.github.io/",
    phone: "(+31) 06 1378 2478",
    github: "smitchaudhary",
    // twitter: none,
    // scholar: "",
    orcid: "0000-0003-0243-6513",
    // birth: "January 1, 1990",
    // linkedin: "smitchaudhary",
    address: "Rotterdamm The Netherlands",
    positions: (
      "Software Engineer",
      "Quantum Algorithms Developer",
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
  title: "Quantum Algorithms Developer",
  location: "Amsterdam, The Netherlands",
  date: "2022 - Present",
  description: "Pasqal",
  title-link: "https://github.com/DeveloperPaul123",
)

#resume-item[
  - Developed Quantum Scientific Machine Learning (QSciML) algorithms. Built and trained variational quantum circuits to solve industrially relevant aerodynamics PDEs, creating quantum alternatives to fully classical physics-informed neural networks (PINNs)
  - Served as technical lead on European Union funded projects, driving collaboration with major aerospace industry partners
  - Architected quantum software infrastructure and built hardware-aware circuit capabilities, making strategic technical decisions that aligned algorithms with neutral atom hardware constraints while enhancing both open-source and proprietary frameworks
  - Mentored research interns and junior developers, leading to successful project contributions and published research outcomes
]

#resume-entry(
  title: "Quantum Computing Intern",
  location: "California, USA",
  date: "May 2022 - Sept 2022",
  description: "Menten AI",
)

#resume-item[
  - Developed a novel fully quantum generative adversarial network (QGAN) architecture for discrete and binary data generation
  - Investigated and implemented quantum circuit features such as noise reuploading in the generator and auxiliary qubits in the discriminator to enhance expressivity
  - Demonstrated the model's performance on synthetic datasets and low-energy states of Ising models, showing successful data reproduction and generalization capabilities
]

= Education

#resume-entry(
  title: "Technische Universiteit Delft",
  location: "Delft, The Netherlands",
  date: "August 2020 - July 2022",
  description: "Master of Science in Applied Physics",
)

#resume-item[
  - *Thesis:* Quantum Walk Based Algorithms for Qubit Mapping (*Supervisor*: Prof. Sebastian Feld)
  - *Research Experience:* Honors Project on Noise Induced Barren Plateaus at Leiden University (*Supervisor*: Prof. Jordi Tura)
  - *Relevant Coursework:* Applied Quantum Algorithms, Quantum Information, Quantum Computing Architecture
]

#resume-entry(
  title: "Indian Institute of Technology, Kanpur",
  location: "Kanpur, India",
  date: "July 2016 - May 2020",
  description: "Bachelor of Science in Physics",
)

#resume-item[
  - *Undergraduate Project:* Bohmian Mechanics and Quantum Information (*Supervisor*: Prof. Kaushik Bhattacharya)
  - *Research Experience:* Summer Research at IISER Kolkata on Quantum Machine Learning (*Supervisor*: Prof. Prasanta Panigrahi)
  - *Relevant Coursework:* Quantum Computing, Quantum Field Theory, Statistical Mechanics, Probability and Statistics, Optics
]

= Selected Publications

#publication(
  title: "Solving Fluid Dynamics Equations with Differentiable Quantum Circuits",
  authors: [#text(weight: "bold")[S. Chaudhary], G. T. Balducci, O. Kyriienko, P. K. Barkoutsos, L. Cardarelli, A. A. Gentile],
  venue: "Proceedings of the 35th Parallel CFD International Conference 2024",
  date: "May 2025",
  url: "https://juser.fz-juelich.de/record/1041810"
)

#publication(
  title: "Quantum Circuit Training with Growth-Based Architectures",
  authors: [C. Duffy, #text(weight: "bold")[S. Chaudhary], G. V. Velikova],
  venue: "arXiv preprint",
  date: "Nov 2024",
  url: "https://arxiv.org/abs/2411.16560"
)

#publication(
  title: "Towards a scalable discrete quantum generative adversarial neural network",
  authors: [#text(weight: "bold")[S. Chaudhary], P. Huembeli, I. MacCormack, T. L. Patti, J. Kossaifi, A. Galda],
  venue: "Quantum Science and Technology",
  date: "April 2023",
  url: "https://arxiv.org/abs/2209.13993"
)

= Skills

#resume-skill-item(
  "Programming",
  (strong("Python"), strong("C/C++"), "Rust", "Verilog"),
)
#resume-skill-item("Languages", (strong("English"), "Hindi", "Gujarati"))
#resume-skill-item(
  "Libraries & Utilities",
  (strong("Git"), strong("PyTorch"), "Pennylane", "Tensorflow", "Jax", "Cirq", "Qiskit"),
)
