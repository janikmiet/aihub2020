# run.R
## Copy files to ./output/ and to kapsi.fi
if(!dir.exists("./output/")) dir.create("./output/")
if(TRUE){
  rmarkdown::render("aihub.Rmd")
  system("cp aihub.html ./output/index.html")
  system("cp footer-header.css ./output/")
  system("cp neurostyle.css ./output/")
  system("cp images.css ./output/")
  system("cp -r ./img/ ./output/img/")
  system("cp -r ./aihub_files/ ./output/datascience_files/")
  system("cp -r ./libs/ ./output/libs/")
  system("scp -r ./output/* janikmiet@kapsi.fi:~/sites/research.janimiettinen.fi/www/material/aihub2020/")
}
