package com.activiti.util;

import java.util.List;

/**
 * 对分页数据进行封装
 */
@SuppressWarnings("all")
public class Page {
	// 指定的或页面参数
	private int currentPage; // 当前页
	private int pageSize; // 每页显示多少条

	// 查询数据库
	private List recordList; // 本页的数据列表
	private int recordCount; // 总记录数

	// 计算
	private int pageCount; // 总页数
	private int beginPageIndex; // 页码列表的开始索引
	private int endPageIndex; // 页码列表的结束索引

	// 拼接分页
	private String links;

	/**
	 * 只接受必要的前4个属性，自动计算其他3个属性的值
	 * 
	 * @param currentPage
	 * @param pageSize
	 * @param recordList
	 * @param recordCount
	 */
	public Page(int currentPage, int pageSize, List recordList, int recordCount) {
		super();
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.recordList = recordList;
		this.recordCount = recordCount;

		// 计算总页码
		pageCount = (recordCount + pageSize - 1) / pageSize;

		// 计算页码列表的开始索引和结束索引
		// 总页数不多于10页，则全部显示
		if (pageCount <= 10) {
			beginPageIndex = 1;
			endPageIndex = pageCount;
		}
		// 总页数多于10页，则显示当前页附近的共10个页码
		else {
			// (前4个+当前页+后5个)
			beginPageIndex = currentPage - 4;
			endPageIndex = currentPage + 5;
			// 当前面的页码不足4个时，则显示前10个页码
			if (beginPageIndex < 1) {
				beginPageIndex = 1;
				endPageIndex = 10;
			}
			// 当后面的页码不足5个时，则显示后10个页码
			if (endPageIndex > pageCount) {
				endPageIndex = pageCount;
				beginPageIndex = pageCount - 10 + 1;
			}
		}
		//
		if (pageCount > 1) {
			this.links = pageLinks();
		}
	}

	/**
	 * 所有页面统一返回Page对象，即使不使用分页
	 * 
	 * @param recordList
	 */
	public Page(List recordList) {
		super();
		this.recordList = recordList;
	}

	/**
	 * 拼接分页
	 */
	private String pageLinks() {
		StringBuffer sBuf = new StringBuffer();

		sBuf.append("<div class=\"t-pages\">");
		sBuf.append("<input class=\"hide\" type=\"text\" >");
		// left
		sBuf.append("<span class=\"t-pages-left\">");
		sBuf.append("<span class=\"t-pages-left-current\">")
				.append("<span class=\"current-number\">")
				.append(this.currentPage).append("</span>/").append("<span>")
				.append(this.pageCount).append("</span>").append("</span>");
		sBuf.append("<span class=\"t-pages-each\">每页:<i>")
				.append(this.pageSize).append("</i>条</span>");
		sBuf.append("<span class=\"t-pages-totalcount\">总记录数:<i>")
				.append(this.recordCount).append("</i>条</span>");
		sBuf.append("</span>");
		// right
		sBuf.append("<span class=\"t-pages-right\">");
		sBuf.append("<a href=\"javascript: gotoPage(1)\" ")
				.append("class=\"first-page ")
				.append(this.currentPage == 1 ? "t-pages-disable" : "")
				.append("\"").append(" style=\"cursor:pointer;\"")
				.append(">第一页</a>");
		//
		for (int i = this.beginPageIndex; i <= this.endPageIndex; i++) {
			if (i == this.currentPage) {
				sBuf.append("<span class=\"t-pages-selected\">")//
						.append(i)//
						.append("</span>");
			} else {
				sBuf.append(
						"<span class=\"t-pages-item\" style=\"cursor:pointer;\" ")
						.append(" onclick=\"gotoPage(").append(i)
						.append(");\">")//
						.append(i)//
						.append("</span>");
			}
		}
		//
		sBuf.append("<a href=\"javascript: gotoPage(")
				.append(this.pageCount)
				.append(")\" class=\"last-page ")
				.append(this.currentPage == this.pageCount ? "t-pages-disable"
						: "").append("\" style=\"cursor:pointer;\">最后一页</a>");
		//
		sBuf.append("<span class=\"t-pages-goto\">转到</span>");
		sBuf.append("<select onchange=\"gotoPage(this.value)\" class=\"t-pages-number\">");
		for (int i = 1; i <= this.pageCount; i++) {
			sBuf.append("<option value=\"").append(i).append("\" ")
					.append(this.currentPage == i ? "selected" : "")
					.append(">").append(i).append("</option>");
		}
		sBuf.append("</select>");
		sBuf.append("</span>");
		sBuf.append("</div>");

		return sBuf.toString();
	}

	public List getRecordList() {
		return recordList;
	}

	public void setRecordList(List recordList) {
		this.recordList = recordList;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public int getBeginPageIndex() {
		return beginPageIndex;
	}

	public void setBeginPageIndex(int beginPageIndex) {
		this.beginPageIndex = beginPageIndex;
	}

	public int getEndPageIndex() {
		return endPageIndex;
	}

	public void setEndPageIndex(int endPageIndex) {
		this.endPageIndex = endPageIndex;
	}

	public String getLinks() {
		return links;
	}

	public void setLinks(String links) {
		this.links = links;
	}

}