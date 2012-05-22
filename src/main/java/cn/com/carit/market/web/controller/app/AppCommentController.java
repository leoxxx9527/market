package cn.com.carit.market.web.controller.app;
import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.carit.market.bean.app.AppComment;
import cn.com.carit.market.bean.app.Application;
import cn.com.carit.market.common.Constants;
import cn.com.carit.market.common.utils.DataGridModel;
import cn.com.carit.market.common.utils.JsonPage;
import cn.com.carit.market.service.app.AccountInfoService;
import cn.com.carit.market.service.app.AppCommentService;
import cn.com.carit.market.service.app.ApplicationService;

/**
 * AppCommentController
 * Auto generated Code
 */
@Controller
@RequestMapping(value="admin/app/comment")
public class AppCommentController {
	private final Logger log = Logger.getLogger(getClass());
	
	@Resource
	private AppCommentService appCommentService;
	
	@Resource
	private ApplicationService applicationService;
	
	@Resource
	private AccountInfoService accountInfoService;
	
	/**
	 * 啥都不干，单纯跳转到页面
	 * admin/app/comment/
	 * @return
	 */
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		model.addAttribute(new AppComment());
		Application app=new Application();
		app.setStatus(Constants.STATUS_VALID);
		model.addAttribute("allApps", applicationService.queryByExemple(app));
		model.addAttribute("accountList", accountInfoService.query());
		return "admin/app/comment";
	}
	
	/**
	 * 增加/更新
	 * admin/app/comment/save
	 * @param user
	 * @param result
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="save", method=RequestMethod.POST)
	@ResponseBody
	public int save(@ModelAttribute AppComment appComment, BindingResult result){
		if (result.hasErrors()) {
			log.debug(result.getAllErrors().toString());
			return -1;
		}
		appCommentService.saveOrUpdate(appComment);
		return 1;
	}
	
	/**
	 * 查看
	 * admin/app/comment/view/{id}
	 * @param id
	 * @return
	 */
	@RequestMapping(value="view/{id}", method=RequestMethod.GET)
	@ResponseBody
	public AppComment view(@PathVariable int id){
		if (id<=0) {
			log.debug("The param id must be bigger than 0...");
			return null;
		}
		return appCommentService.queryById(id);
	}
	
	/**
	 * 删除
	 * admin/app/comment/delete/{id}
	 * @param id
	 * @return
	 */
	@RequestMapping(value="delete/{id}", method=RequestMethod.GET)
	@ResponseBody
	public int delete(@PathVariable int id){
		if (id<=0) {
			log.debug("The param id must be bigger than 0...");
			return -1;
		}
		return appCommentService.delete(id);
	}
	
	/**
	 * 查询
	 * admin/app/comment/query
	 * @return json
	 */
	@RequestMapping(value="query", method=RequestMethod.GET)
	@ResponseBody
	public JsonPage query(@ModelAttribute AppComment appComment, BindingResult result,DataGridModel dgm){
		return appCommentService.queryByExemple(appComment, dgm);
	}
}
