package com.bitcamp.project;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class TradingCheck {

	@Scheduled(fixedDelay = 1000)
	public void TestScheduler() {
		System.out.println("스케줄링 테스트");
	}

}
