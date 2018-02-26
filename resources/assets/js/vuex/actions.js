//show addDataSourceModal
export const changeSet = ({commit,state},setId)=>{
        axios.post(route('admin.product.attrset.attrs'),{attrset_id:setId}).then((res)=>{
            var skuAttrs = _.filter(res.data[0].attrs,(attr)=>attr.is_for_sku==1);
            var saleAttrs = _.filter(res.data[0].attrs,(attr)=>attr.is_for_sku==0);
            commit('changeSet',{setId,skuAttrs,saleAttrs} );
       });
};