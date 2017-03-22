package com.sedc.collectors.yahoo.industry;

import org.apache.log4j.Logger;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobExecutionException;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class YahooIndustryApplication {

    private static final Logger LOG = Logger.getLogger(YahooIndustryApplication.class);

    @Autowired
    private JobLauncher jobLauncher;

    @Autowired
    private Job job;

    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("yahoo-industry-load-job.xml");
        new YahooIndustryApplication().run();
    }

    private void run() {
        try {
            JobExecution execution = jobLauncher.run(job, new JobParameters());
        } catch (JobExecutionException e) {
            LOG.error(e.getMessage(), e);
            System.exit(1);
        }
    }

    public void setJobLauncher(JobLauncher jobLauncher) {
        this.jobLauncher = jobLauncher;
    }

    public void setJob(Job job) {
        this.job = job;
    }
}
