const model = require('./../model/authority.js')
const retCode = require('./../utils/retcode.js')
const com = require('../utils/common')
const db = require('./../db/mysqlHelper.js')

const authority = {

    async add(ctx) {
        let form = ctx.request.body
        let result = retCode.Success
        let auth = await com.jwtFun.checkAuth(ctx)
        if (auth.code == 1) {
            let bkdata = await model.add(form)
            if (bkdata.errno) {
                if (bkdata.errno == 1062) {
                    result = retCode.Fail
                    result.msg = '该权限接口已存在'
                } else {
                    result = retCode.ServerError
                    result.msg = '服务端错误'
                }
                result.data = 0
            } else {
                result.data = bkdata.insertId
                result.msg = '添加成功'
            }

        } else {
            result = auth
            result.data = 0
        }
        if (auth.uid) {
            db.setLog(auth.uid, result.code, 'auths', result.data, '新增权限 ' + result.msg, '/api/auth/add')
        }
        return com.filterReturn(result)
    },

    async update(ctx) {
        let form = ctx.request.body
        let result = retCode.Success
        let auth = await com.jwtFun.checkAuth(ctx)
        if (auth.code == 1) {
            let bkdata = await model.update(form)
            if (bkdata.errno) {
                if (bkdata.errno == 1062) {
                    result = retCode.Fail
                    result.msg = '该权限接口已存在'
                } else {
                    result = retCode.ServerError
                    result.msg = '服务端错误'
                }
            } else {
                result.data = bkdata.changedRows
                result.msg = '修改了' + bkdata.changedRows + '条数据'
            }

        } else {
            result = auth
        }
        if (auth.uid) {
            db.setLog(auth.uid, result.code, 'auths', form.id, '修改权限 ' + result.msg, '/api/auth/update')
        }
        return com.filterReturn(result)
    },

    async del(ctx) {
        let form = ctx.request.body
        let result = retCode.Success
        let auth = await com.jwtFun.checkAuth(ctx)
        if (auth.code == 1) {
            let bkdata = await model.updateDel({
                ids: form.ids
            })
            if (bkdata.errno) {
                result = retCode.ServerError
                result.msg = '服务端错误'
            } else {
                console.log(bkdata)
                result.data = bkdata.changedRows
                result.msg = '成功删除了' + bkdata.changedRows + '条数据'
            }

        } else {
            result = auth
        }
        if (auth.uid) {
            db.setLog(auth.uid, result.code, 'auths', form.ids, '删除权限 ' + result.msg, '/api/auth/del')
        }
        return com.filterReturn(result)
    },
    async getList(ctx) {
        ctx.request.body.tables = 'auths'
        let auth = await com.jwtFun.checkAuth(ctx)
        let result = retCode.Success
        if (auth.auth) {
            result = await com.commonSelect.getList(ctx)
            if (result.args) {
                let userResult = await model.getList(result.args, result.ct)
                let bkdata = result.result
                bkdata.data = userResult

                let re = retCode.Success
                re.data = userResult
                re.msg = '查询成功'
                result = re

            }
        } else {
            result = auth
        }
        if (auth.uid) {
            db.setLog(auth.uid, result.code, 'auths', '', '权限查询 ' + result.msg, '/api/auth/get')
        }
        return com.filterReturn(result)
    },
}
module.exports = authority