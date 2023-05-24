package com.island.app.admin.notice.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.admin.notice.vo.NoticeVo;
import com.island.app.admin.vo.AdminVo;
import com.island.app.common.page.PageVo;

/**
 * 
 * @author 김수경
 *
 */

@Repository
public class NoticeDao {

	public List<NoticeVo> getNoticeList(SqlSessionTemplate sst , PageVo pv) {
		
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		
		return sst.selectList("adminnotice.getNoticeList" , null , rb);
	}

	
	 public int write(SqlSessionTemplate sst, NoticeVo vo) { 
		 return sst.insert("adminnotice.adminNoticeWrite" , vo);
	 }
	 
	 public NoticeVo getNotice(SqlSessionTemplate sst, String num) {
		 return sst.selectOne("adminnotice.getNotice" , num);
	 }
	 
	 public int edit(SqlSessionTemplate sst, NoticeVo vo) { 
		 return sst.update("adminnotice.edit" , vo);
	 
	 }
	 
	 public int delete(SqlSessionTemplate sst, String num) {
		 return sst.update("adminnotice.delete" , num);
	 }


	public int getNoticeListCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminnotice.getNoticeListCnt");
	}
	 

}
