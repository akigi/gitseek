import Vue from 'vue'
import App from './App.vue'



import child_process from 'child_process';
const { spawn } = child_process;
const ls = spawn('ls', ['-lh', '/usr']);
ls.stdout.on('data', data => console.log(`stdout: ${data}`));
ls.stderr.on('data', data => console.log(`stderr: ${data}`));
ls.on('close', code => code && console.log(`child process exited with code ${code}.`));


new Vue({
  el: '#app',
  render: h => h(App)
})
