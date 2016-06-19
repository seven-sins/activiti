package com.activiti.vo;

import java.io.File;

public class Workflow {
	private File processFile; // 流程定义部署文件
	private String processName;// 流程定义名称
	private Integer id;// 申请单ID
	private String deploymentId;// 部署对象ID
	private String diagramResourceName;
	private String imageName; // 资源文件名称
	private String taskId; // 任务ID
	private String outcome; // 连线名称
	private String comment = ""; // 批注

	public String getDiagramResourceName() {
		return diagramResourceName;
	}

	public void setDiagramResourceName(String diagramResourceName) {
		this.diagramResourceName = diagramResourceName;
	}

	public File getProcessFile() {
		return processFile;
	}

	public void setProcessFile(File processFile) {
		this.processFile = processFile;
	}

	public String getProcessName() {
		return processName;
	}

	public void setProcessName(String processName) {
		this.processName = processName;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDeploymentId() {
		return deploymentId;
	}

	public void setDeploymentId(String deploymentId) {
		this.deploymentId = deploymentId;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getTaskId() {
		return taskId;
	}

	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}

	public String getOutcome() {
		return outcome;
	}

	public void setOutcome(String outcome) {
		this.outcome = outcome;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}
