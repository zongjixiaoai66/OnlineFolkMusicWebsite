const base = {
    get() {
        return {
            url : "http://localhost:8080/minyaowangzhan/",
            name: "minyaowangzhan",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/minyaowangzhan/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "民谣网站"
        } 
    }
}
export default base
