import Pkg;
Pkg.add("BenchmarkTools");
Pkg.add("DataFrames");
Pkg.add("CSV");
Pkg.add("XLSX");

using BenchmarkTools
using DataFrames
using DelimitedFiles
using CSV
using XLSX

#?download

P = download("https://raw.githubusercontent.com/nassarhuda/easy_data/master/programming_languages.csv",
    "programminglanguages.csv")

#head didnt work
;head P

P,H = readdlm("programminglanguages.csv",',';header=true);

P
H

[20]
# Q1: Which year was was a given language invented?
function year_created(P,language::String)
    loc = findfirst(P[:,2] .== language)
    !isnothing(loc) && return P[loc,1]
    error("Language not found !!! ")
end
​
# Call the function like this :  year_created(P,"Julia")
