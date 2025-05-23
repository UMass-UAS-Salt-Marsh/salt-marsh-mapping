#' Get Slurm job id for a `batchtools` job
#' 
#' Gets the Slurm job id for the specified `batchtools` job id in the specified registry. 
#' Throws an error if the `batchtools` job or registry don't exist. If there is no Slurm
#' job id yet, returns NA.
#' 
#' In order for this to work, you must add the following line to your Slurm template 
#' (`slurm.tmpl`): \cr \cr
#'    `echo $SLURM_JOB_ID > <%= log.file %>.slurmjobid`
#'
#' @param bjobid The job.id of a `batchtools` job 
#' @param reg `batchtools` registry object
#' @importFrom batchtools getDefaultRegistry
#' @export


get_job_id <- function(bjobid, reg = getDefaultRegistry()) {
   
   
   i <- reg$status$job.id == bjobid
   if(!any(i))
      stop('Job doesn\'t exist')
   
   if(!file.exists(reg$file.dir))
      stop('Registry ', reg$file.dir, ' doesn\'t exist')
   
   file <- file.path(reg$file.dir, 'logs', paste0(reg$status$job.hash[i], '.log.slurmjobid'))
   if(!file.exists(file))
      return(NA_character_)
   
   readLines(file)
}