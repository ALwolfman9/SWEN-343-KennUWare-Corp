<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<@script src=makeOfbizContentUrl("/images/imagemanagement/sizzle.min.js") />
<@script src=makeOfbizContentUrl("/images/imagemanagement/jQueryRotateCompressed.js") />
<style type="text/css">
    .cropbox span { 
        width: auto !important; 
        height: auto !important; 
    }
    .cropbox span canvas{ 
        top : 10px !important;
        left : 10px !important;
    }
</style>
<@script>
<#-- Scipio: this breaks everything (?)
jQuery.noConflict();-->
jQuery(document).ready(function(){
    var angleHold = 0;
    if((jQuery.browser.mozilla) || (jQuery.browser.msie)) {
        var rot = jQuery('.cropbox img').rotate(angleHold);
        jQuery('#rotate-left').click(function(){
            angleHold = angleHold - 45;
            rot[0].rotate(angleHold);
            jQuery('#ImageRotating_angle').val(angleHold);
        });
        jQuery('#rotate-right').click(function(){
            angleHold = angleHold + 45;
            rot[0].rotate(angleHold);
            jQuery('#ImageRotating_angle').val(angleHold);
        });
    } else {
        var rot = jQuery('.cropbox img');
            jQuery('#rotate-left').click(function(){
            angleHold = angleHold - 45;
            rot.rotate(angleHold);
            jQuery('#ImageRotating_angle').val(angleHold);
        });
        jQuery('#rotate-right').click(function(){
            angleHold = angleHold + 45;
            rot.rotate(angleHold);
            jQuery('#ImageRotating_angle').val(angleHold);
        });
    }
});
</@script>