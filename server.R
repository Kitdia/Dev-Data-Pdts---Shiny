library(shiny)

histo <- function(lambda,n.simu)
{
      set.seed(123)
      simu.data = NULL
      
      for (i in 1 : n.simu) simu.data = c(simu.data, mean(rexp(40,lambda)))
      
      simu_mean <- mean(simu.data)
      simu_var <- var(simu.data)
      simu_sd <- sd(simu.data)
      
      true_mean <- 1/lambda 
      true_sd <-  1/lambda/(sqrt(40))
      true_var <-(true_sd)^2
      
      hist(simu.data,col="lightgrey",main = "Distribution",xlab="Simulated Data")
      
      rug(simu.data)
      abline(v=simu_mean,lwd=0.5,col="red")
}


shinyServer(
      function(input, output) {
            output$oid1 <- renderPrint({input$id1})
            output$oid2 <- renderPrint({input$id2})
            
            output$newHist <- renderPlot({
                  histo(input$id1,input$id2)
            })
      
      }
)