shinyUI(pageWithSidebar(
      headerPanel("Central Limit Theorem for Exponential Distribution"),
      sidebarPanel(
            sliderInput('id1', 'Lambda Value',value = 0.2, min = 0.05, max = 100, step = 0.05,),
            sliderInput('id2', 'Number of simulation',value = 5, min = 5, max = 5000, step = 5,),
           

      submitButton('Submit')
      ),
      mainPanel(
            h3('Distribution of averages of 40 exponentials'),
            h4('Chosen lambda value'),
            verbatimTextOutput("oid1"),
            h4('Number of simulation'),
            verbatimTextOutput("oid2"),
            plotOutput('newHist')
      )
))