const XDCC = require('xdccjs').default

let opts = {
    host: 'irc.rizon.net', // IRC hostname                                                   - required
    port: 6667, // IRC port                                                                   - default: 6667
    retry: 5, // Nb of retries before skip                                                    - default: 1
    timeout: 20, // Nb of seconds before a download is considered timed out                   - default: 30
    verbose: true, // Display download progress and jobs status                               - default: false
    botNameMatch: false,
    path: process.cwd()
}
const xdccclient = new XDCC(opts)

xdccclient.on('ready', async () => {
    xdccclient.download('Ginpachi-Sensei', ['5832'])
    xdccclient.download('Ginpachi-Sensei', ['5838'])
    xdccclient.download('Ginpachi-Sensei', ['5840'])
    xdccclient.download('Ginpachi-Sensei', ['5845'])

    xdccclient.on('downloaded', fileInfo => {
        console.log(fileInfo.filePath)
    })
    xdccclient.on('done', job => {
        console.log(job)
    })
    xdccclient.on('can-quit', () => {
        xdccclient.quit()
    })
})
