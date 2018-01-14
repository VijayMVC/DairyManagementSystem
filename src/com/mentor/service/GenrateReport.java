package com.mentor.service;

import java.time.LocalDate;
import java.time.Period;

public class GenrateReport {
	public void genrateMonthlyReport()
	{
	
	/*	LocalDate endofCentury = LocalDate.of(2018, 01, 01);
		LocalDate now = LocalDate.now();
		LocalDate newdate=now.minusDays(15);
		System.out.println(newdate);
		 
		Period diff = Period.between(endofCentury, now);
		 
		System.out.printf("Difference is %d years, %d months and %d days old",
		                    diff.getYears(), diff.getMonths(), diff.getDays());*/
		
		
		
	    
	}
	public static void main(String args[])
	{
		GenrateReport report=new GenrateReport();
		report.genrateMonthlyReport();
	}
	 

}
