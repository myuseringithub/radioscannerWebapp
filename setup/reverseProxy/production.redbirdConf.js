// This file would be required in Redbird reverseProxy. 
// USAGE: 

module.exports = function reverseProxy() {

    let containerGroupName = 'radioscannerwebapp'
    let domain = 'webapp.run'

    let proxyConfig = [
        { // web ui
            domain: domain,
            subdomain: 'radioscanner',
            containerRoute: `http://${containerGroupName}_nodejs:80`,
            ssl: false
        },
        { // stream
            domain: domain,
            subdomain: 'stream.radioscanner',
            containerRoute: `http://${containerGroupName}_apachestreamproxy:80`,
            ssl: false
        },
    ]

    return proxyConfig
}
