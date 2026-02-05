# Environmental Data Science (Spring 2026) Main Project
Contributors: Pen Hanks, Maddie Strate, Catalina Bush

## 1. Environmental Problem & Framing (~150 words)
The topic we hope to investigate is how trees respond to changes in climate. Forests make up a significant part of the United States, and communities across America have aided in reforestation efforts. As weather in the United States has gotten more extreme over recent years, vegetation has responded in different ways to varying amounts of precipitation and sunlight. 

Our research aims to determine which native species are more resilient to changes in temperature, and thus will fare better in future years as temperatures continue to fluctuate. This will then inform the reforestation efforts of conservationists, who will have the information to create more resilient forests. 

Further, our research will analyze historical climate trends as well as tree growth patterns and the interaction between the two. By combining a historical analysis with future predictions, we will form a more comprehensive understanding of North American tree species and their dependence on environmental factors that are currently being impacted by climate change.

## 2. Dataset Exploration (Three Options)

  [**a) Bayesian Analysis of Tree Distributions Across Space and Time in Eastern North America 2010-2011**](https://search.dataone.org/view/https%3A%2F%2Fpasta.lternet.edu%2Fpackage%2Fmetadata%2Feml%2Fknb-lter-hfr%2F182%2F13) <br>
    The dataset covers tree distribution across plots in Eastern North America, alongside environmental data points. The data was collected by Sydne Record and Aaron Ellison of Harvard Forest. The data set was published via Environmental Data Initiative. <br>
  Key variables:
  - longitude of plot (interval)
  - latitude of plot (interval)
  - presence of fagus grandifolia (logical)
  - presence of hemlock (logical)
  - annual mean temp (continuous)
  - annual mean precipitation (continuous)
  - mean diurnal range (continuous)

  [**b) A gridded database of the modern distributions of climate, woody plant taxa, and ecoregions for the continental United States and Canada**](https://www.sciencebase.gov/catalog/item/620da87bd34e6c7e83ba9ba7) <br>
    The dataset covers population data for a host of woody plant species in USA and Canada. The data is broken up into a 25km grid that also contains granular environmental data points. The data was published by the US Geological Survey. <br>
  Key variables:
  - longitude of plot (interval)
  - latitude of plot (interval)
  - elevation (continuous)
  - monthly mean temperatures (continuous)
  - monthly mean precipitation (continuous)
  - presence of individual species (logical)
  - ecoregion type (nominal)

  [**c) Effects of Warming on Tree Species Recruitment at Harvard Forest and Duke Forest since 2009**](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-hfr.199.15) <br>
    The dataset includes data from controlled experiments at Harvard Forest and Duke Forest from 2009-2012. Researchers planted a variety of local tree species and exposed them to differing air temperature, soil temperature, and light exposure conditions, then took various observations over the observational period. The data was published by Harvard University. <br>
  Key variables:
  - warming treatment (ordinal)
  - light treatment (nominal)
  - species (nominal)
  - air temperature (continuous)
  - soil temperature at 5cm depth (continuous)
  - water stress (ordinal)
