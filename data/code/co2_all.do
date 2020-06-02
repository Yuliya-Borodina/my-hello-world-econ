 clear all
capture log close
cd "/Users/YA/Google Drive/Capstone_2"
log using doc1.log, replace
set more off
 
import excel "/Users/YA/Google Drive/Capstone_2/data/data prep/Co2.xls", sheet("Data") firstrow clear

foreach v of varlist E-BK {
  local lb_var : var label `v'
  rename `v' year`lb_var'
}

rename CountryCode iso_o

drop IndicatorName IndicatorCode

reshape long y, i(iso_o) j(year) string

egen year1 = fill(1960 1961 1962 1963 1964 1965 1966 1967 1968 1969 1970 1971 1972 1973 1974 1975 1976 1977 /*
*/ 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 /*
*/ 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 1960 1961 1962 1963 1964 1965 1966 1967 1968 1969 1970 1971 1972 1973 1974 1975 1976 1977 /*
*/ 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 /*
*/ 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018)

drop year

rename year1 year

save "/Users/YA/Google Drive/Capstone_2/data/data prep/co2_all.dta", replace
