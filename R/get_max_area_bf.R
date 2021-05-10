get_max_area_bf <- function(heights){

  # browser()
  maxarea = 0

  for(i in 1:length(heights)){
    minheight = heights[i]
    for (j in seq(i,length(heights),1)){
      minheight = min(minheight, heights[j])
      currarea = (j - i +1) * minheight
      maxarea = max(currarea,maxarea)
      if(currarea>=maxarea){
        maxarea_i <- i
        maxheight <-  heights[j]
      }
    }
  }
  list(col=maxarea_i,maxheight=maxheight,maxarea=maxarea)

}
