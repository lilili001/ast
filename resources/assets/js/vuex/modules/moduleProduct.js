const state = {
    attrsetId:'',
    skuAttrs:[],
    saleAttrs:[]
};
const mutations = {
    changeSet(state,{setId,skuAttrs,saleAttrs} ) {
        state.attrsetId = setId;
        state.skuAttrs = skuAttrs;
        state.saleAttrs = saleAttrs;
    },
};
export default {
    state,
    mutations
};