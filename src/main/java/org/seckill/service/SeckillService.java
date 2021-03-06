package org.seckill.service;

import java.util.List;

import org.seckill.dto.Exposer;
import org.seckill.dto.SeckillExecution;
import org.seckill.entity.Seckill;
import org.seckill.exception.RepeatKillException;
import org.seckill.exception.SeckillCloseException;
import org.seckill.exception.SeckillException;

/**
 * 业务接口：站在“使用者”的角度设计接口
 * 三方面考虑：方法定义的粒度、参数、返回类型（return 类型/异常）
 * @author ewendia *
 */
public interface SeckillService {
		
	/**
	 * 查询所有秒杀记录
	 * @return
	 */
	List <Seckill> getSeckillList ();
	
	/**
	 * 查询单个秒杀记录
	 * @param seckillId
	 * @return
	 */
	Seckill getById(long seckillId);
	
	/**
	 * 秒杀开始时输出秒杀接口的地址，否则输出系统时间和秒杀时间
	 * @param seckillId
	 */
	Exposer exposeSeckillUrl(long seckillId);
	
	SeckillExecution executeSeckill(long seckillId, long userPhone, String md5)
		throws RepeatKillException, SeckillCloseException, SeckillException;

}
