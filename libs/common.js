const crypto=require('crypto');

module.exports={
  MD5_SUFFIX: '5d41402abc4b2a76b9719d911017c592',
  md5: function (str){
    var obj=crypto.createHash('md5');

    obj.update(str);

    return obj.digest('hex');
  }
};