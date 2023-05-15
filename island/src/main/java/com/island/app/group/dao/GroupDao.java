package com.island.app.group.dao;

import com.island.app.common.page.PageVo;
import com.island.app.group.vo.GroupVo;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GroupDao {
    public List<GroupVo> list(SqlSessionTemplate sst, GroupVo groupVo, PageVo pageVo) {
        int limit = pageVo.getBoardLimit();
        int offset = (pageVo.getCurrentPage()-1) * limit;
        RowBounds rb = new RowBounds(offset , limit);

        return sst.selectList("group.list", groupVo, rb); }

    public int getTotalCount(SqlSessionTemplate sst, GroupVo groupVo) {
        return sst.selectOne("group.total",groupVo);
    }
}
