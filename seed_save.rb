

user = User.create!(
  email: 'steve@chesnowitz.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Steve',
  last_name: 'Chesnowitz',
  username: 'Chesnowitz',
  admin: true
  )
  puts user.inspect
  
  
  user = User.create!(
  email: 'noadmin@chesnowitz.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Steve',
  last_name: 'Chesnowitz',
  username: 'Chesnowitz',
  admin: false
  )
  puts user.inspect
  

  
  
  course = Course.create!(
    name: "Ruby for Beginners"
  )
  
  course2 = Course.create!(
    name: "Rails for Beginners"
  )
  app_setting = AppSetting.create!(
    theme_name: 'pulse',
    tab_name: 'acme_app',
    front_end_color: 'red', 
    app_title: 'Chesnowitz', 
    app_email_1:'udemyapprails@gmail.com', 
    app_email_2:'example2@example.com',
    app_email_title_1: "From udemyapprails@gmail.com",
    app_email_title_2: "title goes here 2"
  )
  puts app_setting.inspect
  
  
  t1 = TemplateOne.create!(
    about_title: 'any text will do',
    about_text: 'any text will do',
    about_text_2: "some more text",
    about_image: '',
    service_icon_1: "fa fa-code",
    service_title_1: "some more text",
    service_text_1: "some more text",
    service_icon_2: "fa fa-code",
    service_title_2: "some more text",
    service_text_2: "some more text",
    service_icon_3: "fa fa-code",
    service_title_3: "some more text",
    service_text_3: "some more text",
    service_icon_4: "fa fa-code",
    service_title_4: "some more text",
    service_text_4: "some more text",
    service_title_5: "some more text",
    service_text_5: "some more text",
    main_process_title: "main_process_title",
    main_process_title_text: "main_process_title_text",
    process_icon_1: "some more text",
    sub_title_1: "sub_title_1",
    process_li_1: "process_li_1",
    process_li_2: "process_li_2",
    process_li_3: "process_li_3",
    process_li_4: "process_li_4",
    process_icon_2: "some more text",
    sub_title_2: "sub_title_2",
    process_li_5: "process_li_5",
    process_li_6: "process_li_6",
    process_li_7: "process_li_7",
    process_li_8: "process_li_8",
    process_icon_3: "some more text",
    sub_title_3: "sub_title_3t",
    process_li_9: "process_li_9",
    process_li_10: "process_li_10",
    process_li_11: "process_li_11",
    process_li_12: "process_li_12",
    header_title: "Header Title",
    header_text: "Header Text",
  
    action_text_1: '',
    action_text_2: '',
    action_text_3: '',
    action_text_4: '',
    action_text_5: '',
    action_text_6: '',   
    action_text_7: '',
    action_button_text: "Let's Talk",
    action_image: '',
    portfolio_header_title: 'portfolio_header_title',
    portfolio_header_text: 'portfolio_header_text',
    navigation_title: "Communications",
    contact_title: 'contact_title',
    contact_text: 'contact_text',
    newsletter_title: 'newsletter_title',
  
    footer_icon_telephone: "fa fa-code",
    footer_telephone_title: "footer_telephone_title",
    footer_telephone_number: "footer_telephone_number",
    footer_icon_address: "fa fa-code",
    footer_address_title: "footer_address_title",
    footer_address_street: "footer_address_street",
    footer_address_city: "footer_address_city",
    footer_address_state: "footer_address_state",
    footer_address_postal_code: "postal_code",
    footer_icon_email: "fa fa-code",
    footer_email_title: "footer_email_title",
    footer_email_address: "email_address",
    footer_social_icon_1: "fa fa-code",
    footer_social_url_1: "url_1",
    footer_social_icon_2: "fa fa-code",
    footer_social_url_2: "url_2",
    footer_social_icon_3: "fa fa-code",
    footer_social_url_3: "url_3",
    footer_social_icon_4: "fa fa-code",
    footer_social_url_4: "url_4",
    footer_social_icon_5: "fa fa-code",
    footer_social_url_5: "url_5",
    footer_social_icon_6: "fa fa-code",
    footer_social_url_6: "url_6",
    footer_image: "",
    portfolio_grid_title: 'portfolio_grid_title',
    portfolio_grid_text: 'portfolio_grid_text'
    
  )
  puts t1.inspect
  
  page = Page.create!(
    title: 'Reputation Management', 
    url: 'url', 
    string_1: 'A company or brands social and search engine profile is essentially the same thing as a version of its credit score. Online reputation management focuses on creating and/or improving the quantity, visibility, and relevance of positive online content for a company. Online reputation management is often abbreviated as "ORM" or "SERM" which stands for "Search Engine Reputation Management", the terms are often used interchangeably.  The objective of a Reputation Management campaign is to improve how an online profile - be it a person, product, service, political entity, or company - is seen online. Reputation Management services use SEO, PR, content design and management, search engine marketing, review management, negotiation, legal methods, and psychology to achieve the goals of their clients.', 
    string_2: 'A Valuable Asset', 
    string_3: 'For business owners, your online reputation is your most valuable asset as search results will impact the decisions of potential customers. Good online reputation management is not only about reacting well to what people say about you, or your company but also about how and when to react. We can help create/restore and protect the reputation you’ve worked hard to build.', 
    string_4: 'What\'s Involved?', 
    string_5: 'Online reputation services are used to improve Yelp, Google, Facebook, Twitter, and almost any other page that collects data about your brand. We can improve search results, and to remove or suppress any negative online content. The practice of ORM often includes a number of different disciplines and frameworks. The end result of each is usually the same - We improve how a brand is seen online.', 
    string_6: 'Guaranteed Results', 
    string_7: 'We are one of the very few online Reputation Management firms that guarantees results -- If your you do not see an improvement in the first 90 days, or if you are just not happy with the service: You get your money back.', 
    string_8: 'string_8', 
    string_9: 'string_9', 
    string_10: 'string_10', 
    string_11: 'string_11', 
    string_12: 'string_12', 
    string_13: 'string_13', 
    string_14: 'string_14', 
    string_15: 'string_15', 
    template_one_id: 1, 
    show_as_solo_link: false, 
    show_in_dropdown: true, 
    hide: false
  )
  
  # project = Project.create!(
  #   # Carousel project section
  #   name: "Header Text", 
  #   description: "Header Text", 
  #   button_text: "Header Text", 
  #   image_1: "",
  #   image_2: "",
  #   modal_name: "Header Text",
  #   modal_description: "Header Text",
  #   modal_client: "Header Text",
  #   modal_date: "Header Text",
  #   modal_service: "Header Text",
  #   modal_image_1: "",
  #   modal_image_2: "",
  #   modal_image_3: "",
  #   modal_image_4: "",
  #   template_one_id: 1
  # )
  # puts project.inspect
  
  
  sleep 3
  #Production..
  
  app_setting = AppSetting.find_or_initialize_by(id: 1)
  app_setting.theme_name = 'solar'
  app_setting.tab_name = 'CI Communications'
  app_setting.navbar_color = 'dark'
  app_setting.front_end_color = 'blue' 
  app_setting.app_title = 'Communications' 
  app_setting.app_email_1 = 'steve@chesnowitz.com'
  app_setting.app_email_2 = 'example2@example.com'
  app_setting.app_email_title_1 = "Form Submission Chesnowitz"
  app_setting.app_email_title_2 = "title goes here 2"
  app_setting.save
  puts app_setting.inspect
  
  
  t1 = TemplateOne.find_or_initialize_by(id: 1)
  t1.about_title = 'any text will do'
  t1.about_text = 'any text will do'
  t1.about_text_2 = "some more text"
  t1.about_image = ''
  t1.about_hide = true
  
  # services
  t1.service_icon_1 = "superpowers"
  t1.service_title_1 = "<%= Full Service Design %>"
  t1.service_text_1 = "Designed for the full project lifecycle"
  t1.service_icon_2 = "gears"
  t1.service_title_2 = "We run the process, start to finish"
  t1.service_text_2 = "We’ve built a team and process that allows us to develop meaningful insights and the know-how to execute on these insights. There’s no loss in translation between the two ends, and the individuals working with you in the planning also carry through to the execution of the project."
  
  t1.service_title_3 = "Design Is A Big Deal"
  t1.service_text_3 = "We believe great design elevates brands above their competitors. For us, design is visual, but it’s also strategic. We aim to create products that are elegant and memorable, but also tactical enough to persuade end-users and drive conversions."
  t1.service_icon_3 = "handshake-o"
  t1.service_title_4 = "The Time To Know"
  t1.service_text_4 = "We spend time up front in each of our new relationships understanding who our clients are, who their customers are, and what the goals for both parties are. This approach helps us understand the data better, which gives us the ablilty to deliver more effective, and specialized digital strategies."
  t1.service_icon_4 = "info-circle"
  t1.service_title_5 = "Transparent Development"
  t1.service_text_5 = "The fact that we deliver application development education to developers from over 150 countries gives us the ability to convey to each of our clients the process.  We believe that our Transparent Development process makes clients happy and is key during the project life-cycle."
  
  # process 
  t1.main_process_title = "DIGITAL LANDSCAPE"
  t1.main_process_title_text = "We know it well"
  t1.process_icon_1 = "bicycle"
  t1.sub_title_1 = "Project Lifecycle"
  t1.process_li_1 = "Strategy & Planning"
  t1.process_li_2 = "Content"
  t1.process_li_3 = "UI Design"
  t1.process_li_4 = "Support"
  t1.process_icon_2 = "suitcase"
  t1.sub_title_2 = "Content Management"
  t1.process_li_5 = "You are in control!"
  t1.process_li_6 = "Easily edit content"
  t1.process_li_7 = "Document management"
  t1.process_li_8 = "Good For SEO"
  t1.process_icon_3 = "rocket"
  t1.sub_title_3 = "Application Deployment"
  t1.process_li_9 = "Infrastructure"
  t1.process_li_10 = "Orchestration"
  t1.process_li_11 = "Reliable deployments"
  t1.process_li_12 = "Insight across your entire stack"
  
  # header
  t1.header_title = "ARTFUL INFORMATION"
  t1.header_text = "Transparent Development"
  
  # Action 
  t1.action_text_1 = 'Our team thrives on new projects and challenges.'
  t1.action_text_2 = ''
  t1.action_text_3 = 'If you have a project in mind that you think we could add value to'
  t1.action_text_4 = 'we’d love to hear from you.'
  t1.action_text_5 = ''
  t1.action_text_6 = ''   
  t1.action_text_7 = ''
  t1.action_button_text = "Let's Talk"
  t1.action_image = ''
  t1.portfolio_header_title = 'portfolio_header_title'
  t1.portfolio_header_text = 'portfolio_header_text'
  t1.navigation_title = "Ci Communications"
  t1.contact_title = 'Get In Touch'
  t1.contact_text = 'Let\'s talk'
  t1.newsletter_title = 'newsletter_title'
  # footer 
  t1.footer_use_default_image = true
  t1.footer_hide_address = true
  t1.footer_icon_telephone = "map-pin"
  t1.footer_telephone_title = "Toronto"
  t1.footer_telephone_number = ""
  t1.footer_icon_address = "fa fa-code"
  t1.footer_address_title = "footer_address_title"
  t1.footer_address_street = "footer_address_street"
  t1.footer_address_city = "footer_address_city"
  t1.footer_address_state = "footer_address_state"
  t1.footer_address_postal_code = "postal_code"
  t1.footer_icon_email = "map-marker"
  t1.footer_email_title = "Buffalo"
  t1.footer_email_address = ""
  t1.footer_hide_social_1 = false
  t1.footer_social_icon_1 = "facebook"
  t1.footer_social_url_1 = "www.facebook.com/groups/1722657984689508/"
  t1.footer_hide_social_2 = false
  t1.footer_social_icon_2 = "linkedin"
  t1.footer_social_url_2 = "linkedin.com/in/steve-chesnowitz"
  t1.footer_hide_social_3 = false
  t1.footer_social_icon_3 = "github"
  t1.footer_social_url_3 = "github.com/schesnowitz"
  t1.footer_hide_social_4 = false
  t1.footer_social_icon_4 = "facebook-square"
  t1.footer_social_url_4 = "facebook.com/cicommunications"
  t1.footer_social_icon_5 = "fa fa-code"
  t1.footer_hide_social_5 = true
  t1.footer_social_url_5 = "url_5"
  t1.footer_social_icon_6 = "fa fa-code"
  t1.footer_hide_social_6 = true
  t1.footer_social_url_6 = "url_6"
  t1.portfolio_grid_title = 'TAKE A PEEK'
  t1.portfolio_grid_text = 'At just some of our work.'
  
  t1.save
  puts t1.inspect
  