package com.mvc.jigulyeog.model.dao;

import com.mvc.jigulyeog.model.dto.FundingListDto;

public interface FundingDao {
	String NAMESPACE = "mapper.fundingList.";
	Boolean checkFundingUser(String user_id, Integer pro_num);
	Boolean insertFundingList(FundingListDto sponser);
	Boolean updatePrjectNowMoney(FundingListDto sponser);
	Boolean updateFundingList(FundingListDto sponser);

}
