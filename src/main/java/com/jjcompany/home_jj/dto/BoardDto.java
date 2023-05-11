package com.jjcompany.home_jj.dto;

import javax.print.attribute.standard.DateTimeAtCompleted;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardDto {
	private int bnum;
	private String bid;
	private String bname;
	private String bcontent;
	private String bemail;
	private String bdate;

}
