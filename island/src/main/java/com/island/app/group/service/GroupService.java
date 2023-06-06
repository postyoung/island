package com.island.app.group.service;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.group.dao.GroupDao;
import com.island.app.group.vo.GroupCategoryVo;
import com.island.app.group.vo.GroupPoVo;
import com.island.app.group.vo.GroupVo;
import com.island.app.group.vo.LocalCategoryVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class GroupService {
    private final GroupDao dao;
    private final SqlSessionTemplate sst;

    @Autowired
    public GroupService(GroupDao dao , SqlSessionTemplate sst) {
        this.dao = dao;
        this.sst = sst;
    }
    public List<GroupVo> list(GroupVo groupVo, PageVo pageVo) {
        return dao.list(sst, groupVo, pageVo);
    }
    public GroupVo detail(int no) {
        return dao.detail(sst, no);
    }
    public List<GroupPoVo> getGroupDetailImages(int no){
        return dao.getGroupDetailImages(sst , no);
    }
    public void create(GroupVo groupVo, FileVo fileVo, List<FileVo> fileVoList) {
        dao.create(sst, groupVo);
        dao.saveThumbnail(sst, fileVo);
        for (FileVo vo : fileVoList) {
            dao.saveGroupDetailImage(sst, vo);
        }
    }
    public List<GroupCategoryVo> getCategoryList(){
        return dao.getCategoryList(sst);
    }
    public List<LocalCategoryVo> getLocalCategoryList(){
        return dao.getLocalCategoryList(sst);
    }
    public int getTotalCount(GroupVo groupVo){
        return dao.getTotalCount(sst, groupVo);
    }

    public int edit(GroupVo groupVo){
        return dao.edit(sst,groupVo);
    }
    public int delete(GroupVo groupVo){
        return dao.delete(sst ,groupVo);
    }

//    public GroupVo getBorad(String no) throws Exception {
//        int result = dao.hit(sst, no);
//        if (result != 1) {
//            throw new Exception();
//        }
//    }

}
