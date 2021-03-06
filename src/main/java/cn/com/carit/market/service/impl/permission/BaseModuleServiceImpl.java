package cn.com.carit.market.service.impl.permission;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import cn.com.carit.market.bean.BaseModule;
import cn.com.carit.market.common.utils.DataGridModel;
import cn.com.carit.market.common.utils.JsonPage;
import cn.com.carit.market.dao.permission.BaseModuleDao;
import cn.com.carit.market.dao.permission.BaseRoleModuleDao;
import cn.com.carit.market.service.permission.BaseModuleService;
import cn.com.carit.market.web.CacheManager;
@Service
@Transactional(readOnly=true)
public class BaseModuleServiceImpl implements BaseModuleService{
	
	@Resource
	private BaseModuleDao baseModuleDao;
	
	@Resource
	private BaseRoleModuleDao baseRoleModuleDao;
	
	@Override
	@Transactional(readOnly=false)
	public void saveOrUpdate(BaseModule baseModule) {
		if (baseModule==null) {
			throw new NullPointerException("baseModule object is null...");
		}
		if (baseModule.getId()==0) {
			baseModuleDao.add(baseModule);
		} else {
			baseModuleDao.update(baseModule);
		}
		//更新缓存
		CacheManager.getInstance().refreshUserCache();
	}

	@Override
	@Transactional(readOnly=false)
	public int delete(int id) {
		if (id<=BaseModule.MAX_SYSTEM_MODULE_ID) {//权限管理模块不能删除
			throw new IllegalArgumentException("id must be bigger than "+BaseModule.MAX_SYSTEM_MODULE_ID);
		}
		// 删除角色模块
		baseRoleModuleDao.deleteByModuleId(id);
		// 删除模块
		return baseModuleDao.delete(id);
	}

	@Override
	@Transactional(readOnly=false)
	public int batchDelete(String ids) {
		if (StringUtils.hasText(ids)) {
			String [] array=ids.split(",");
			for (String id : array) {
				delete(Integer.parseInt(id.trim()));
			}
			return array.length;
		}
		return 0;
	}

	@Override
	public BaseModule queryById(int id) {
		if (id<=0) {
			throw new IllegalArgumentException("id must be bigger than 0...");
		}
		return baseModuleDao.queryById(id);
	}

	@Override
	public List<BaseModule> query() {
		return baseModuleDao.query();
	}

	@Override
	public List<BaseModule> queryByExemple(BaseModule baseModule) {
		if (baseModule==null) {
			throw new NullPointerException("must given an exemple...");
		}
		return baseModuleDao.queryByExemple(baseModule);
	}

	@Override
	public JsonPage<BaseModule> queryByExemple(BaseModule baseModule, DataGridModel dgm) {
		if (baseModule==null) {
			throw new NullPointerException("must given an exemple...");
		}
		return baseModuleDao.queryByExemple(baseModule, dgm);
	}

	@Override
	public List<BaseModule> queryByUserId(int userId) {
		if (userId<=0) {
			throw new IllegalArgumentException("userId must be bigger than 0...");
		}
		return baseModuleDao.queryByUserId(userId);
	}

	@Override
	public List<BaseModule> queryByRoleId(int roleId) {
		if (roleId<=0) {
			throw new IllegalArgumentException("roleId must be bigger than 0...");
		}
		return baseModuleDao.queryByRoleId(roleId);
	}

	@Override
	public int checkModule(String moduleName) {
		if (!StringUtils.hasText(moduleName)) {
			throw new IllegalArgumentException("moduleName must be not empty...");
		}
		return baseModuleDao.checkModule(moduleName);
	}
	
}
