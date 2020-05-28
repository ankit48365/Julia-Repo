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

#=
readdlm(source,
    delim::AbstractChar,
    T::Type,
    eol::AbstractChar;
    header=false,
    skipstart=0,
    skipblanks=true,
    use_mmap,
    quotes=true,
    dims,
    comments=false,
    comment_char='#')
=#
P,H = readdlm("programminglanguages.csv",',';header=true);

P

H
