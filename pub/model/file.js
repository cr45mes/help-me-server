const db = require('./../db/mysqlHelper.js')

const app = {
    async getList(args) {
        let result = await db.commonSelect(args);
        return result;
    },
    async add(args) {
        let sql = 'INSERT INTO files (filename,size,realname,type,wx_id,is_temp) value(?,?,?,?,?,?)'
        let params = [args.filename, args.size, args.realname, args.type, args.wx_id, args.is_temp]
        let result = await db.query(sql, params)
        return result
    },
    async findById(args) {
        let sql = 'select * from files where id=?'
        let params = [args.id]
        let result = await db.query(sql, params)
        return result
    },
    async updateTemp(id) {
        let sql = 'UPDATE files set is_temp=0 where id in (' + id + ')'
        let result = await db.query(sql, [])
        return result
    },
    async updateDel(id) {
        let sql = 'UPDATE files set is_delete=1 where id in (' + id + ')'
        let result = await db.query(sql, [])
        return result
    },



    async getList(args) {
        let result = await db.commonSelect(args)
        return result
    },


}

module.exports = app