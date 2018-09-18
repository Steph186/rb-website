require 'date'

# CREATE PEOPLE
puts "Creating people"
collaborator_attr = [
  {
    first_name: "Roberto",
    last_name: "Bottini",
    position: "PI",
    avatar: "https://static.wixstatic.com/media/1655b1_3b41f5f30dcf454f8cc2b2f7d28c7ada~mv2.jpg/v1/fill/w_205,h_200,al_c,lg_1,q_80/1655b1_3b41f5f30dcf454f8cc2b2f7d28c7ada~mv2.webp",
    description_one: "Roberto holds a PhD in Anthropology and Epistemology of Complexity from the University of Bergamo (with significant spells at the Max Planck Institute for Psycholinguistics in Nijmegen). He held postdoctoral positions at the New School for Social Research in New York, at the University of Milano Bicocca, Italy, and at the Center for Mind/Brain Sciences (CIMeC) in Trento, Italy. His research interests are language processing and evolution, consciousness, abstract thinking and the cognitive neuroscience of blindness.",
    description_two: "Roberto is now a researcher affiliated with the International School for Advanced Studies (SISSA) in Trieste and with the Center for Mind/Brain Sciences (CIMeC) in Trento. He's mostly based at CIMeC, where he leads a research unit on \"Perceptual Experience and Word Meaning\" (Davide Crepaldi and Olivier Collignon are also co-PI on the project).",
    alumni: false,
  },
  {
    first_name: "Lorenzo",
    last_name: "Vignali",
    position: "Post Doc",
    avatar: "https://static.wixstatic.com/media/1655b1_6634fd5dbc9d4a8dbb23447b0c282ce1~mv2.jpg/v1/crop/x_0,y_123,w_974,h_972/fill/w_205,h_200,al_c,q_80,usm_0.66_1.00_0.01/1655b1_6634fd5dbc9d4a8dbb23447b0c282ce1~mv2.webp",
    description_one: "Lorenzo obtained his Master Degree in Developmental and Educational Psychology at the University of Padova. For his PhD he moved to the University of Salzburg where he worked with different neurocognitive methods (EEG, MEG, fMRI, tDCS) to investigate the neural underpinnings of visual word recognition (with Florian Hutzler). He's main interests are language, visual spatial attention and the cognitive neuroscience of blindness.",
    description_two: "Lorenzo joined the lab as a post-doctoral fellow in September 2017. He's part of a joint project between SISSA (with Davide) and the Center for Mind/Brain Sciences (CIMeC, with Olivier Collignon and Roberto Bottini). In this research project he studies language processing in sighted and blind people.",
    alumni: false,
  },
  {
    first_name: "Yangwen",
    last_name: "Xu",
    position: "Post Doc",
    avatar: "https://static.wixstatic.com/media/1655b1_df599efa574d45bda8a4c13fc6a76ab1~mv2.jpg/v1/fill/w_204,h_198,al_c,q_80,usm_0.66_1.00_0.01/1655b1_df599efa574d45bda8a4c13fc6a76ab1~mv2.webp",
    description_one: "Yangwen got his PhD in Cognitive Neuroscience under the supervision of Yanchao Bi at the Beijing Normal University. His main interest is to investigate how does the brain, as an electrical and biological machine, represent concepts and construct thoughts.",
    description_two: "Yangwen joined the lab as a post-doctoral fellow in December 2017. He's part of a joint project between SISSA and the CIMeC. In this research project, he studies semantic processing and neuroplastic mechanisms through blindness.",
    alumni: false,
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
    alumni: false,
    }
]

collaborator_attr.each do |collaborator_details|
  this_collaborator = Collaborator.new(collaborator_details)
  # this_collaborator.remote_photo_url = this_collaborator.avatar
  this_collaborator.save
end

puts "Creating publications"
publications_attr = [
  {
    authors: "Bottini, R., Casasanto, D., Nadalini, A., & Crepaldi, D.",
    title: "Word meaning with and without consciousness: Insights from metaphorical priming",
    journal: "PsyArXiv",
    url: "https://drive.google.com/file/d/1A3znL6dLdgnFqBNL7-mrjMBRwj6mX0AL/view",
  },
  {
    authors: "Bottini, R., Barilari, M., & Collignon, O.",
    title: "Sound symbolism in sighted and blind. The role of orthography and vision in shape-sound correspondences.",
    journal: "PsyArXiv",
    url: "https://psyarxiv.com/vbm4t",
  },
  {
    authors: "Crollen, V., Spruyt, T., Mahau, P., Bottini, R., & Collignon, O.",
    year: Date.new(2018,6, 13),
    title: "How visual experience and task context modulate the use of internal and external spatial coordinate for perception and action",
    journal: "PsyArXiv",
    url: "https://psyarxiv.com/a6k9y/",
  },
  {
    authors: "Mattioni, S., Rezk, M., Cuculiza Mendoza, K.E.,  Battal, C.,  Bottini, R.,  van Ackeren, MJ., Oosterhof, N.N., Collignon, O.",
    title: "How input modality and visual experience affect the neural encoding of categorical knowledge.",
    journal: "PsyArXiv",
    url: "https://jov.arvojournals.org/article.aspx?articleid=2651166&resultClick=1",
  },
  {
    authors: "Bottini, R., Ferraro, S., Nigri, A., Cuccarini V., Bruzzone, M. G. & Collignon, O.",
    title: "Different neural networks for conceptual processing  in sighted and blind.",
    url: "https://www.biorxiv.org/content/early/2018/08/23/384552",
  },
  {
    authors: "Nadalini, A., Marelli, M., Bottini, R., & Crepaldi, D.",
    title: "Modeling priming effect with distributional semantics.",
    url: "https://drive.google.com/file/d/1eDEiyd0t9tHNGVB23Gv2gQh9wdKTvkSC/view",
  },
  {
    authors: "Battal, C., Rezk, M., Mattioni, S.,  Bottini, R., Bertonati, G.,  Occelli, V.,  Targher, S.,  & Collignon, O.",
    year: Date.new(2017,9),
    title: " Decoding auditory motion directions and locations in hMT+/V5 and planum temporale of sighted and blind individuals.",
    url: "#",
  },
  # published conference papers
  {
    authors: "Bottini, R., Casasanto, D., Nadalini, A., & Crepaldi, D.",
    year: Date.new(2016,6),
    title: "Stepping out of the Chinese Room: Word meaning with and without consciousness",
    journal: "CLiC it",
    url: "https://drive.google.com/file/d/1A3znL6dLdgnFqBNL7-mrjMBRwj6mX0AL/view",
  },
  {
    authors: "Bottini, R, Guarino, C. & Casasanto, D.",
    year: Date.new(2013,8),
    title: "Space is special: A domain-specific mapping between time and nontemporal magnitude.",
    journal: "Proceedings of the 35th Annual Conference of the Cognitive Science Society",
    url: "https://drive.google.com/file/d/10-bQJyqRkVApQzcsc_KFp0BQ5OFJMeDC/view",
  },
  {
    authors: "Gijssels, T., Bottini, R., Rueschemeyer, S.A. & Casasanto, D.",
    year: Date.new(2013,8),
    title: "Proceedings of the 35th Annual Conference of the Cognitive Science Society",
    journal: "Space and Time in the Parietal Cortex: fMRI Evidence for a Neural Asymmetry. ",
    url: "https://drive.google.com/file/d/1MAlEU6SUNI5J9LIZrQYFR_ENDl1wOCSw/view",
  },
  {
    authors: "Bottini, R. & Casasanto, D.",
    year: Date.new(2010,6),
    title: "Implicit spatial length modulates time estimates, but not vice versa.",
    journal: "Proceedings of the 32th Annual Conference of the Cognitive Science Society",
    url: "https://drive.google.com/file/d/1OtkmnHo7MlWYbMNnVSLlS81kY8s_JerN/view",
  },
  # published papers
  {
    authors: "Barilari, M., de Heering, A., Crollen, V., Collignon, O., & Bottini R.",
    year: Date.new(2018,2,1),
    title: "Is red heavier than yellow even for blind?",
    journal: "i-Perception",
    url: "https://drive.google.com/file/d/1hqjEcZhG8R_2VQMKmsIbw8ekSRzZ4RBJ/view",
  },
  {
    authors: "van Ackeren, M., Barbero, F., Mattioni, S., Bottini, R. & Collignon, O.",
    year: Date.new(2018,1,17),
    title: "Neuronal populations in the occipital cortex of the blind synchronize to the temporal dynamics of speech",
    journal: "Elife",
    url: "https://drive.google.com/file/d/18vnzgfnyDADySJ4tKfT29U_RLnGpUzzT/view",
  },
  {
    authors: "Bottini, R., Mattioni S., & Collignon O.",
    year: Date.new(2016,8,26),
    title: "Early blindness alters the spatial organization of verbal working memory",
    journal: "Cortex",
    url: "https://drive.google.com/file/d/1nbE9i5cIN_JDLDTv-ZmpP13o2q8i4J0l/view",
  },
  {
    authors: "Bottini, R., Bucur, M., & Crepaldi, D.",
    year: Date.new(2016,5,20),
    title: "The nature of semantic priming by subliminal spatial words. Embodied or disembodied?",
    journal: "Journal of Experimental Psychology: General",
    url: "https://drive.google.com/file/d/1VtoZ1fXSELzFaSzLB225GFndPtlsWg5D/view",
  },
  {
    authors: "Bottini, R., Crepaldi, D., Casasanto, D., Crollen, V., & Collignon, O.",
    year: Date.new(2015,4,1),
    title: "Space and time in the sighted and blind",
    journal: "Cognition",
    url: "https://drive.google.com/file/d/1cyq2HkzUTeYIOZpzXmD0sWFMWDd9gCYG/view",
  },
  {
    authors: "Casasanto, D. & Bottini, R.",
    year: Date.new(2014,3,1),
    title: "Spatial language and abstract concepts",
    journal: "WIREs: Cognitive Science 5",
    url: "https://drive.google.com/file/d/1bKdgH1Y-Ol5uDwialGbaPblzO_GVXaxp/view",
  },
  {
    authors: "Casasanto, D. & Bottini, R.",
    year: Date.new(2013,6,17),
    title: "Mirror reading can reverse the flow of time.",
    journal: "Journal of Experimental Psychology: General",
    url: "https://drive.google.com/file/d/1GLF7-isXhhlGIO5VIwX8Aj6WwmwGROXc/view",
  },
  {
    authors: "Bottini, R. & Casasanto, D.",
    year: Date.new(2013,11,5),
    title: "Space and time in the child's mind: metaphoric or ATOMic?",
    journal: "Frontiers in psychology",
    url: "https://drive.google.com/file/d/1PS_jNUM8v1BD1ov54gwQ160sYFYsdZdn/view",
  }
]

publications_attr.each do |publication_details|
  Publication.create!(publication_details)
end

puts "Not creating user"
# User.create!(email: "robi@gmail.com", password: "123456")

research_attr = [
  {
    category: "Research topic",
    title: "Spatial basis of knowledge",
    descr_one: "How do we think about things that we cannot see, hear or touch?",
    descr_two: "How do we think about the past or plan the future? How can we represent other's people minds, desires and beliefs? How do we retrieve, maintain and manipulate information in our mind's eye?",
    descr_three: "We are exploring the possibility that the mental machinery evolved to represent and navigate space has been recycled to represent and navigate conceptual information and memory.",
    icon: "1 Book",
  },
  {
    category: "Research topic",
    title: "Language processing",
    descr_one: "How do we make sense of words?",
    descr_two: "How comes that meaningless strings of written signs or arbitrary sounds are related to concepts? How do we retrieve and manipulate conceptual knowledge?",
    descr_three: "Our research follows a semiotic framework according to which meaning is generated by iconic, indexical and symbolic processes that requires the interaction of the memory, language and sensorimotor system.",
    icon: "2 Language",
  },
  {
    category: "Research topic",
    title: "Consciousness",
    descr_one: "What is the difference between conscious and unconscious cognition?",
    descr_two: "What is the role of consciousness in language processing and it relations with semantics? Why is Siri not yet conscious?",
    descr_three: "We think that our research on knowledge and semantics may help to provide and answer to these fundamental questions.",
    icon: "3 Brain",
  },

  {
    category: "Footer link",
    title: "https://www.github.com",
    icon: "GitHub",
  },

  {
    category: "Footer link",
    title: "https://www.google.com",
    icon: "Google Scholar",
  },

  {
    category: "Footer link",
    title: "https://www.researchgate.com",
    icon: "Research Gate",
  },

  {
    category: "Footer link",
    title: "https://www.slack.com",
    icon: "Slack",
  },

  {
    category: "Footer link",
    title: "https://www.twitter.com",
    icon: "Twitter",
  },

  {
    category: "Funding",
    title: "ERC - Starting grant",
    icon: "ERC.jpg",
  }
]

research_attr.each do |research_details|
  Research.create!(research_details)
end

puts "Creating pictures"

url = "https://www.pinterest.ie/pin/473089135826402471/"
picture = Picture.new(page: "We do fundamental research in psychology and neuroscience to understand how
the mind represents knowledge.")
# picture.remote_photo_url = url
picture.save

url = "https://cdn.studentloanhero.com/wp-content/uploads/student-loan-debt-statistics.jpg"
picture = Picture.new(page: "People")
# picture.remote_photo_url = url
picture.save

url = "http://omicscentre.com/wp-content/uploads/2012/12/imatge_publications-650x395.jpg"
picture = Picture.new(page: "Publications")
# picture.remote_photo_url = url
picture.save

url = "http://www.synergydirectfunding.com/wp-content/uploads/2015/02/latestnews.png"
picture = Picture.new(page: "News")
# picture.remote_photo_url = url
picture.save

url = "http://www.bbhlegal.co.uk/wp-content/uploads/2018/04/contact.jpg"
picture = Picture.new(page: "Contact")
# picture.remote_photo_url = url
picture.save

puts "Creating stories"
stories_attr = [
  {
    title: "Robi got his ERC! congratulations to him!!",
    content: "Robi is going to start a new lab with his newly acquired ERC. His has funding for five years. Best of luck to him ad his team. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate rem ratione, similique, culpa deserunt sit vero aperiam officia ducimus vel maxime cumque tempore soluta rerum tempora incidunt quisquam iusto asperiores.",
    display_picture: false,
  },
  {
    title: "The lab is hiring a post-doc",
    content: "Open position: we are looking for a new post-doc, for a three years position. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error sequi hic animi necessitatibus nobis eligendi repellendus veniam laboriosam. Nam, tempore fuga assumenda quisquam accusantium cumque labore facere necessitatibus in illo.",
    display_picture: false,
  },
]

stories_attr.each do |story_details|
  this_story = Story.new(story_details)
  # this_story.remote_photo_url = "https://cmkt-image-prd.global.ssl.fastly.net/0.1.0/ps/2214891/1160/773/m1/fpnw/wm0/confetti-congratulations-white-72-.jpg?1485917056&s=3dda06e08e3cc052a8b838b399ed0187"
  this_story.save
end

puts "Done !"
