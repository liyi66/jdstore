CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["mOCpc7gUyOIyYNykU1RdF10gxNxlpbVcCmItXJin"]
  config.qiniu_secret_key    = ENV["XC2lC3cC-BtsjDcnEs96ZBe4XPXaz006Md4l26P5"]
  config.qiniu_bucket        = ENV["jdstore-demo"]
  config.qiniu_bucket_domain = ENV["omc2cnmwq.bkt.clouddn.com "]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniug.com"  #选择不同的区域时，"up.qiniug.com" 不同
end
