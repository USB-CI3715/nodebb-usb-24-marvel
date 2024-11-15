const db = require('../database');
const { getChildrenCids } = require('../../src/categories');
const user = require('../user')
const  plugin = {};

plugin.filterSubjectsByTrimester = async (cids, uid) => {

    const filteredCategories = [];

    for(const cid in cids){
        const allChildCids = await categories.getAllCidsFromSet("cid:${cid}:children");
        filteredCategories.concat(allChildCids);
    }
    
    return filteredCategories;
}