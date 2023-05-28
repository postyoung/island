package com.island.app.group.dao;

import com.island.app.common.file.FileVo;
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

        return sst.selectList("group.list", groupVo, rb);
    }

    //게시글 목록


    //게시글 등록
    public void create(SqlSessionTemplate sst, GroupVo groupVo) {
        sst.insert("group.create", groupVo);
    }

    public void saveThumbnail(SqlSessionTemplate sst, FileVo fileVo) {
        sst.insert("group.saveThumbnail", fileVo);
    }

    public int getTotalCount(SqlSessionTemplate sst, GroupVo groupVo) {
        return sst.selectOne("group.total",groupVo);
    }

    public GroupVo detail(SqlSessionTemplate sst, int no) {
        return sst.selectOne("group.detail", no);
    }
    public int edit(SqlSessionTemplate sst , GroupVo groupVo){
        return sst.update("group.edit" , groupVo);
    }

    public void join(SqlSessionTemplate sst , GroupVo groupVo){
        sst.insert("group.join" , groupVo);
    }
    public int hit(SqlSessionTemplate sst , String no){
        return sst.update("group.hit" , no);
    }
    public int delete(SqlSessionTemplate sst , GroupVo groupVo){
        return sst.update("group.delete" , groupVo);
    }


}
