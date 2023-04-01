<template>
  <div>
  <div class="col-lg-12 control-section tree-default">
      <div class="tree-control-wrapper">
          <ejs-treeview id='treeview' :fields='fields'></ejs-treeview>
      </div>
  </div>
  
  </div>
  </template>
  
  <script>
  import Vue from "vue";
  import { TreeViewPlugin } from "@syncfusion/ej2-vue-navigations";
  import * as dataSource from './default-data.json';
  
  Vue.component(TreeViewPlugin);
  
  export default Vue.extend({
      data: function() {
          return {
              fields: { dataSource: dataSource.defaultData , id: 'id', text: 'name', child: 'subChild' },
          };
      }
  });
  </script>