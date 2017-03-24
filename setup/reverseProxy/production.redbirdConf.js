// This file would be required in Redbird reverseProxy. 
// USAGE: 

export default function reverseProxy(proxy) {

    // let email = process.env.EMAIL
    let domainWebUI = 'radioscanner.webapp.run'
    let domainStream = 'stream.radioscanner.webapp.run'

    proxy.register(domainWebUI, 'http://radioscannerwebapp_nodejs:80');
    proxy.register(domainStream, 'http://radioscannerwebapp_apachestreamproxy/:80');
        
}
