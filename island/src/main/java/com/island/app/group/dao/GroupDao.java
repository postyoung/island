package com.island.app.group.dao;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.group.vo.GroupCategoryVo;
import com.island.app.group.vo.GroupPoVo;
import com.island.app.group.vo.GroupVo;
import com.island.app.group.vo.LocalCategoryVo;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GroupDao {
    //게시글 목록
    public List<GroupVo> list(SqlSessionTemplate sst, GroupVo groupVo, PageVo pageVo) {
        int limit = pageVo.getBoardLimit();
        int offset = (pageVo.getCurrentPage()-1) * limit;
        RowBounds rb = new RowBounds(offset , limit);

        return sst.selectList("group.list", groupVo, rb);
    }

    //게시글 작성
    public void create(SqlSessionTemplate sst, GroupVo groupVo) {
        sst.insert("group.create", groupVo);
    }

    //이미지썸네일
    public void saveThumbnail(SqlSessionTemplate sst, FileVo fileVo) {
        sst.insert("group.saveThumbnail", fileVo);
    }
    //상세정보이미지 업로드
    public void saveGroupDetailImage(SqlSessionTemplate sst, FileVo fileVo) {
        sst.insert("group.saveGroupDetailImage", fileVo);
    }
    //리스트페이징
    public int getTotalCount(SqlSessionTemplate sst, GroupVo groupVo) {
        return sst.selectOne("group.total",groupVo);
    }
    //상세페이지
    public GroupVo detail(SqlSessionTemplate sst, int no) {
        return sst.selectOne("group.detail", no);
    }
    //수정하기
    public int edit(SqlSessionTemplate sst , GroupVo groupVo){
        return sst.update("group.edit" , groupVo);
    }
    //신청하기
    public void join(SqlSessionTemplate sst , GroupVo groupVo){
        sst.insert("group.join" , groupVo);
    }
    //조회수
    public int hit(SqlSessionTemplate sst , String no){
        return sst.update("group.hit" , no);
    }
    //삭제하기
    public int delete(SqlSessionTemplate sst , GroupVo groupVo){
        return sst.update("group.delete" , groupVo);
    }
    //카테고리 목록
    public List<GroupCategoryVo> getCategoryList(SqlSessionTemplate sst){
        return sst.selectList("group.categoryList");
    }
    //지역 목록
    public List<LocalCategoryVo> getLocalCategoryList(SqlSessionTemplate sst){
        return sst.selectList("group.localCategoryList");
    }


    public void manage(SqlSessionTemplate sst , GroupVo groupVo){
        sst.insert("group.manage" , groupVo);
    }


    public List<GroupPoVo> getGroupDetailImages(SqlSessionTemplate sst, int no) {
        return sst.selectList("group.getGroupDetailImages" , no);
    }
}
