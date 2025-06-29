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
  block(below: 0.9em)[
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

// Custom function for research projects
#let research-project(
  title: none,
  location: "",
  date: "",
  advisor: none,
  project-type: "",
  title-link: none,
  accent-color: default-accent-color,
  location-color: default-location-color,
) = {
  let title-content
  if type(title-link) == str {
    title-content = link(title-link)[#title]
  } else {
    title-content = title
  }

  block(above: 1em, below: 0.65em)[
    #pad[
      #justified-header(title-content, location)
      #if advisor != none [
        #secondary-justified-header([*Advisor:* #advisor], date)
      ] else [
        #secondary-justified-header(project-type, date)
      ]
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
      "Quantum Algorithms Developer",
      "Quantum Physicist",
      "Software Engineer",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  paper-size: "us-letter",
)
#v(0.8em)
= Experience

#resume-entry(
  title: "Quantum Algorithms Developer",
  location: "Amsterdam, The Netherlands",
  date: "Nov 2022 - Present",
  description: "Pasqal",
  title-link: "https://github.com/DeveloperPaul123",
)

#resume-item[
  - Developed Quantum Scientific Machine Learning (QSciML) algorithms. Built and trained variational quantum circuits to solve industrially relevant aerodynamics PDEs, creating quantum alternatives to fully classical physics-informed neural networks (PINNs)
  - Served as technical lead on European Union funded projects, translating quantum research into practical solutions and driving business development opportunities with major aerospace industry partners
  - Architected quantum software infrastructure and built hardware-aware circuit capabilities, making strategic technical decisions that aligned algorithms with neutral atom hardware constraints while enhancing both open-source and proprietary frameworks
  - Mentored 3 research interns and 2 junior developers, leading to successful project contributions and 3 research publications
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

#v(0.8em)
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

#v(0.8em)
= Publications

#publication(
  title: "Weak Form Regularisation for Solving Differential Equations with Quantum Neural Networks",
  authors: [A. Paine, #text(weight: "bold")[S. Chaudhary], A. A. Gentile],
  venue: "Submitted to Quantum Techniques in Machine Learning",
  date: "2025",
  url: none,
  description: "Addresses key limitations in Quantum PINNs where traditional point based approaches fail at boundary propagation. Combines local collocation points and global weak form terms to improve accuracy and stability."
)

#publication(
  title: "Solving Fluid Dynamics Equations with Differentiable Quantum Circuits",
  authors: [#text(weight: "bold")[S. Chaudhary], G. T. Balducci, O. Kyriienko, P. K. Barkoutsos, L. Cardarelli, A. A. Gentile],
  venue: "Proceedings of the 35th Parallel CFD International Conference 2024",
  date: "May 2025",
  url: "https://juser.fz-juelich.de/record/1041810",
  description: "Demonstrates applications of hybrid quantum-classical algorithms to solve complex fluid dynamics problems. Shows how data integration and quantum feature maps offer advantage over classical methods."
)

#publication(
  title: "Quantum Circuit Training with Growth-Based Architectures",
  authors: [C. Duffy, #text(weight: "bold")[S. Chaudhary], G. V. Velikova],
  venue: "arXiv preprint",
  date: "Nov 2024",
  url: "https://arxiv.org/abs/2411.16560",
  description: "Develops novel growth-based training strategies for parametrized quantum circuits that dynamically adjust circuit depth during optimization to manage model complexity to prevent overfitting."
)

#publication(
  title: "Towards a scalable discrete quantum generative adversarial neural network",
  authors: [#text(weight: "bold")[S. Chaudhary], P. Huembeli, I. MacCormack, T. L. Patti, J. Kossaifi, A. Galda],
  venue: "Quantum Science and Technology",
  date: "April 2023",
  url: "https://iopscience.iop.org/article/10.1088/2058-9565/acc4e4",
  description: "Introduces a novel fully quantum (and connected) generative adversarial network with both quantum generator and discriminator, incorporating noise reuploading and auxiliary qubits."
)

#publication(
  title: "Quantum Machine Learning: A Review and Current Status",
  authors: [N. Mishra, M. Kapil, H. Rakesh, et al., #text(weight: "bold")[S. Chaudhary], et al.],
  venue: "Data Management, Analytics and Innovation, Springer Singapore",
  date: "Sept 2020",
  url: "https://doi.org/10.1007/978-981-15-5619-7_8",
  description: "Reviews the current status (as of 2020) and previous literature on Quantum Machine Learning (QML)"
)

#v(0.8em)
= Research Projects

#research-project(
  title: "Quantum Walk-Based Algorithms for Qubit Mapping",
  location: "TU Delft, Delft, The Netherlands",
  date: "August 2021 - May 2022",
  advisor: "Prof. Sebastian Feld",
  project-type: "M.Sc. Thesis",
)

#resume-item[
  - Developed a quantum walk based algorithm for qubit mapping in quantum circuits, framed as a combination of a *Constraint Satisfaction Problem (CSP)* and an optimization problem
  - Implemented a modified quantum algorithm for speeding up *backtracking search* in CSPs to reduce qubit requirements by pre-computing mapping order and using efficient ancilla register management
  - Designed a classical greedy routing algorithm to minimize overhead in terms of *SWAP* operations for sliced quantum circuits, optimizing the path of qubit mappings across circuit segments
  - Evaluated the algorithm's performance against increasing circuit depth and number of qubits, showing an *overhead ratio ('R') of approximately 1.1* for deep and large circuits, indicating efficient routing
  - Analyzed the algorithmic complexity, demonstrating a space complexity of *O(n log n)* for the quantum walk algorithm, specifically optimizing for qubit count in the implementation
]

#research-project(
  title: "Quantum Generative Adversarial Networks",
  location: "Leiden University, Leiden, The Netherlands",
  date: "February 2021 - April 2022",
  project-type: "Applied Quantum Algorithms Course",
)

#resume-item[
  - Implemented a fully quantum GAN with both quantum generator (*QCBM*) and quantum discriminator for quantum state generation
  - Developed a custom quantum state vector simulation framework using *NumPy* matrix operations, creating modular classes for gates, circuits and GAN components
  - Implemented quantum gradient computation by deriving circuit construction rules for parametric gate derivatives, enabling backpropagation in quantum circuits, enabling efficient training through custom gradient descent implementation
  - Validated predictions showing Wasserstein loss convergence to zero and fidelity approaching unity during adversarial training
  - Demonstrated successful quantum state reproduction achieving *fidelity >0.99* on 2-qubit systems, converging to target states
]

#research-project(
  title: "Barren Plateaus in QNN Training with Correlated Noise",
  location: "Leiden University, Leiden, The Netherlands",
  date: "April 2021 - April 2022",
  advisor: "Prof. Jordi Tura",
  project-type: "Honors Project",
)

#resume-item[
  - Validated established Barren Plateau theory through implementation of Haar random circuits with local Pauli noise
  - Implemented realistic quantum hardware noise models for small shallow circuits including correlated noise channels
  - Analyzed the impact of noise correlation and strength on Barren Plateau formation beyond uncorrelated noise regimes
  - Pursued improved theoretical bounds for Barren Plateau onset under correlated noise scenarios
]

#v(0.8em)
= Skills

#resume-skill-item(
  "Programming",
  (strong("Python"), strong("C/C++"), "Rust", "Verilog"),
)
#resume-skill-item("Languages", (strong("English"), "Hindi", "Gujarati"))
#resume-skill-item(
  "Libraries & Utilities",
  (strong("Git"), strong("PyTorch"), "NumPy", "Pennylane", "Tensorflow", "Jax", "Cirq", "Qiskit"),
)
