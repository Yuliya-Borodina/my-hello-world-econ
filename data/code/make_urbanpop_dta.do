clear all
* Write down the directory below
cd "/Users/YA/Documents/GitHub/my-hello-world-econ/data/code"

* IMPORT DATA FROM .CSV TO .DTA
import delimited using ".././input/urbanpop.csv", clear
save ".././output/finaldata.dta", replace
