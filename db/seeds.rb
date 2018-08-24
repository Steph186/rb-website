# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

publications_attr = [
  {
    authors: "V Crollen, T Spruyt, P Mahau, R Bottini, O Collignon",
    year: Date.new(2018,2),
    title: "How visual experience and task context modulate the use of internal and external spatial coordinate for perception and action",
    journal: "PsyArXiv",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "M Barilari, A de Heering, V Crollen, O Collignon, R Bottini",
    year: Date.new(2018,4),
    title: "Is red heavier than yellow even for blind?",
    journal: "i-Perception",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "MJ Van Ackeren, FM Barbero, S Mattioni, R Bottini, O Collignon",
    year: Date.new(2018,1),
    title: "Neuronal populations in the occipital cortex of the blind synchronize to the temporal dynamics of speech",
    journal: "Elife",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "R Bottini, M Barilari, O Collignon",
    year: Date.new(2017,2),
    title: "Sound Symbolism in Sighted and Blind The role of orthography and vision in sound-shape correspondences",
    journal: "PsyArXiv",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "Stefania Mattioni, Mohamed Rezk, Karen Cuculiza, Ceren Battal, Roberto Bottini, Markus Van Ackeren, Nick Oosterhof, Olivier Collignon",
    year: Date.new(2017,9),
    title: "A-modal versus Cross-modal: How input modality and visual experience affect categorical representation in the visual cortex",
    journal: "Journal of Vision",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "R Bottini, S Mattioni, O Collignon",
    year: Date.new(2016,1),
    title: "Early blindness alters the spatial organization of verbal working memory",
    journal: "Cortex",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "R Bottini, M Bucur, D Crepaldi",
    year: Date.new(2016,11),
    title: "The nature of semantic priming by subliminal spatial words. Embodied or disembodied?",
    journal: "Journal of Experimental Psychology: General",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "R Bottini, D Crepaldi, D Casasanto, V Crollen, O Collignon",
    year: Date.new(2015,3),
    title: "Space and time in the sighted and blind",
    journal: "Cognition",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "R Bottini, D Casasanto, A Nadalini, D Crepaldi",
    year: Date.new(2016,6),
    title: "Stepping out of the Chinese Room: Word meaning with and without consciousness",
    journal: "CLiC it",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "D Casasanto, R Bottini",
    year: Date.new(2014,2),
    title: "Mirror reading can reverse the flow of time.",
    journal: "Journal of Experimental Psychology: General",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "D Casasanto, R Bottini",
    year: Date.new(2014,8),
    title: "Spatial language and abstract concepts",
    journal: "Wiley Interdisciplinary Reviews: Cognitive Science 5",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  },
  {
    authors: "R Bottini, D Casasanto",
    year: Date.new(2013,6),
    title: "Space and time in the child's mind: metaphoric or ATOMic?",
    journal: "Frontiers in psychology",
    url: "https://scholar.google.com/citations?user=_rV7XZgAAAAJ&hl=en",
  }
]

publications_attr.each do |publication_details|
  Publication.create!(publication_details)
end

# conferences_attr = [
#   {
#     authors: "Bottini, R., Ferraro, S., Nigri, A., Cuccarini, V., Bruzzone, M., and Collignon, O.",
#     year: "2018",
#     title: "Different neural networks for conceptual processing in sighted and blind.",
#     conference_name: "The conference on concepts, actions and objects (CAOS)",
#   },
#   {
#     authors: "BMorucci, P., Barilari, M., Collignon, O., Drepaldi, D., and Bottini, R.",
#     year: "2018",
#     title: "The concreteness effect is independent of visual experience.",
#     conference_name: "The conference on concepts, actions and objects (CAOS)",
#   }
# ]

# conferences_attr.each do |conference_details|
#   Conference.create!(conference_details)
# end

collaborator_attr = [
  {
    first_name: "Roberto",
    last_name: "Bottini",
    position: "PI",
    avatar: "https://static.wixstatic.com/media/1655b1_3b41f5f30dcf454f8cc2b2f7d28c7ada~mv2.jpg/v1/fill/w_205,h_200,al_c,lg_1,q_80/1655b1_3b41f5f30dcf454f8cc2b2f7d28c7ada~mv2.webp",
    description_one: "Roberto holds a PhD in Anthropology and Epistemology of Complexity from the University of Bergamo (with significant spells at the Max Planck Institute for Psycholinguistics in Nijmegen). He held postdoctoral positions at the New School for Social Research in New York, at the University of Milano Bicocca, Italy, and at the Center for Mind/Brain Sciences (CIMeC) in Trento, Italy. His research interests are language processing and evolution, consciousness, abstract thinking and the cognitive neuroscience of blindness.",
    description_two: "Roberto is now a researcher affiliated with the International School for Advanced Studies (SISSA) in Trieste and with the Center for Mind/Brain Sciences (CIMeC) in Trento. He's mostly based at CIMeC, where he leads a research unit on \"Perceptual Experience and Word Meaning\" (Davide Crepaldi and Olivier Collignon are also co-PI on the project)."
  },
  {
    first_name: "Lorenzo",
    last_name: "Vignali",
    position: "Post Doc",
    avatar: "https://static.wixstatic.com/media/1655b1_6634fd5dbc9d4a8dbb23447b0c282ce1~mv2.jpg/v1/crop/x_0,y_123,w_974,h_972/fill/w_205,h_200,al_c,q_80,usm_0.66_1.00_0.01/1655b1_6634fd5dbc9d4a8dbb23447b0c282ce1~mv2.webp",
    description_one: "Lorenzo obtained his Master Degree in Developmental and Educational Psychology at the University of Padova. For his PhD he moved to the University of Salzburg where he worked with different neurocognitive methods (EEG, MEG, fMRI, tDCS) to investigate the neural underpinnings of visual word recognition (with Florian Hutzler). He's main interests are language, visual spatial attention and the cognitive neuroscience of blindness.",
    description_two: "Lorenzo joined the lab as a post-doctoral fellow in September 2017. He's part of a joint project between SISSA (with Davide) and the Center for Mind/Brain Sciences (CIMeC, with Olivier Collignon and Roberto Bottini). In this research project he studies language processing in sighted and blind people."
  },
  {
    first_name: "Yangwen",
    last_name: "Xu",
    position: "Post Doc",
    avatar: "https://static.wixstatic.com/media/1655b1_df599efa574d45bda8a4c13fc6a76ab1~mv2.jpg/v1/fill/w_204,h_198,al_c,q_80,usm_0.66_1.00_0.01/1655b1_df599efa574d45bda8a4c13fc6a76ab1~mv2.webp",
    description_one: "Yangwen got his PhD in Cognitive Neuroscience under the supervision of Yanchao Bi at the Beijing Normal University. His main interest is to investigate how does the brain, as an electrical and biological machine, represent concepts and construct thoughts.",
    description_two: "Yangwen joined the lab as a post-doctoral fellow in December 2017. He's part of a joint project between SISSA and the CIMeC. In this research project, he studies semantic processing and neuroplastic mechanisms through blindness."
  },
  #   {
  #   first_name: "Marco",
  #   last_name: "Barilari",
  #   position: "Research Assistant",
  #   avatar: "https://static.wixstatic.com/media/1655b1_3f09341b6e37430ba617fb8ae4b58436~mv2.jpg/v1/fill/w_205,h_200,al_c,q_80,usm_0.66_1.00_0.01/1655b1_3f09341b6e37430ba617fb8ae4b58436~mv2.webp",
  #   description_one: "Marco obtained his master degree in Psychology and Neuroscience at the University of Trento, with a thesis on the role of vision in the development of sound symbolism, which he carried out under the supervision of Olivier Collignon.",
  #   description_two: "In the lab, Marco keeps working on how visual deprivation affects perception and abstract concepts through behavioral and neuroimaging (fMRI) methods, under the co-supervision of Roberto Bottini at CIMeC."
  # },
  #   {
  #   first_name: "Camilla",
  #   last_name: "Endrizzi",
  #   position: "Master Student",
  #   avatar: "https://static.wixstatic.com/media/1655b1_8e88011fa415441d8883ebbf2594bc94~mv2.jpg/v1/crop/x_0,y_0,w_232,h_232/fill/w_203,h_200,al_c,q_80,usm_0.66_1.00_0.01/1655b1_8e88011fa415441d8883ebbf2594bc94~mv2.webp",
  #   description_one: "Camilla is a master student in Psychology and Neuroscience at the University of Trento. She did her undergraduate studies in Cognitive Psychology at the University of Trento. She is interested in studying the limitation of unconscious visual processing. For her master thesis project, she will address this problem using a new methodology that combines backward masking and Steady-state visual evoked potential (SSVEP) with magnetoencephalography (MEG).",
  # },
  #   {
  #   first_name: "Jacopo",
  #   last_name: "Turini",
  #   position: "Master Student",
  #   avatar: "https://static.wixstatic.com/media/1655b1_c30733c48f9b4ec4a5f9a2ddbe26f12a~mv2.jpg/v1/fill/w_196,h_203,al_c,q_80,usm_0.66_1.00_0.01/1655b1_c30733c48f9b4ec4a5f9a2ddbe26f12a~mv2.webp",
  #   description_one: "Jacopo is a master student in Cognitive Neuroscience at Center for Mind/Brain Sciences (CIMeC) of University of Trento. He did his undergraduate studies in Psychological Sciences at University of Milano-Bicocca. He is interested in understanding how meanings are represented in the human neurocognitive system. During his thesis project, he will address this problem recording the neural activity evoked by semantic processing in both sighted and blind people, using magnetoencephalography (MEG).",
  # },
    {
    first_name: "Federica",
    last_name: "Sigismondi",
    position: "Master Student",
    avatar: "https://static.wixstatic.com/media/1655b1_0d69dc7ddfd745daa016d09ff5544282~mv2.jpg/v1/fill/w_196,h_200,al_c,q_80,usm_0.66_1.00_0.01/1655b1_0d69dc7ddfd745daa016d09ff5544282~mv2.webp",
    description_one: "Federica is a master student in Psychology and Neuroscience at University of Trento. She did her undergraduate studies in Psychology at University of Bergamo. Her principal interest is studying how blindness affect learning. For her master thesis project she will address this problem studying the implicit learning in sighted and blind people.",
  }
]

collaborator_attr.each do |collaborator_details|
  Collaborator.create!(collaborator_details)
end

User.create!(email: "robi@gmail.com", password: "123456")

research_attr = [
  {
    title: "Spatial basis of knowledge",
    descr_one: "How do we think about things that we cannot see, hear or touch? How do we think about the past or plan the future? How can we represent other's people minds, desires and beliefs? How do we retrieve, maintain and manipulate information in our mind's eye?",
    descr_two: "We are exploring the possibility that the mental machinery evolved to represent and navigate space has been recycled to represent and navigate conceptual information and memory.",
  },
  {
    title: "Language processing",
    descr_one: "How do we make sense of words? How comes that meaningless strings of written signs or arbitrary sounds are related to concepts? How do we retrieve and manipulate conceptual knowledge?",
    descr_two: "Our research follows a semiotic framework according to which meaning is generated by iconic, indexical and symbolic processes that requires the interaction of the memory, language and sensorimotor system.",
  },
  {
    title: "Consciousness",
    descr_one: "What is the difference between conscious and unconscious cognition? What is the role of consciousness in language processing and it relations with semantics? Why is Siri not yet conscious?",
    descr_two: "We think that our research on knowledge and semantics may help to provide and answer to these fundamental questions.",
  }
]

research_attr.each do |research_details|
  Research.create!(research_details)
end

# url = "https://res.cloudinary.com/did3jv3n4/image/upload/v1535098665/eo06k0n5zibcsolutlml.png"
picture = Picture.new(page: "home")
# picture.remote_photo_url = url
picture.save

# url = "https://res.cloudinary.com/did3jv3n4/image/upload/v1535098721/cpse57fwt4wgmoqfkeq9.jpg"
picture = Picture.new(page: "researches")
# picture.remote_photo_url = url
picture.save

# url = "https://www.oliverwyman.com/content/dam/oliver-wyman/v2/expertise/Contact-us-1600x602.jpg.imgix.banner.jpg"
picture = Picture.new(page: "people")
# picture.remote_photo_url = url
picture.save

# url = "https://www.oliverwyman.com/content/dam/oliver-wyman/v2/expertise/Contact-us-1600x602.jpg.imgix.banner.jpg"
picture = Picture.new(page: "publications")
# picture.remote_photo_url = url
picture.save

# url = "https://www.oliverwyman.com/content/dam/oliver-wyman/v2/expertise/Contact-us-1600x602.jpg.imgix.banner.jpg"
picture = Picture.new(page: "news")
# picture.remote_photo_url = url
picture.save

# url = "https://www.oliverwyman.com/content/dam/oliver-wyman/v2/expertise/Contact-us-1600x602.jpg.imgix.banner.jpg"
picture = Picture.new(page: "contact")
# picture.remote_photo_url = url
picture.save



stories_attr = [
  {
  title: "Robi got his ERC! congratulations to him!!",
  content: "Robi is going to start a new lab with his newly acquired ERC. His has funding for five years. Best of luch to him ad his team."
},
{
  title: "The lab is hiring a post-doc",
  content: "Open position: we are looking for a new post-doc, for a three years position."
},
]

stories_attr.each do |story_details|
  Story.create!(story_details)
end
