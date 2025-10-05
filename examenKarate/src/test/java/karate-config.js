function fn() {
  var baseUrl = ''
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'test') {
       baseUrl = 'https://petstore.swagger.io/v2/'
       // customize
     }

  var config = {
       baseUrl:baseUrl,
      env: env,
      myVarName: 'someValue'
    }
  return config;
}