


<div class="row">
            <div class="col-md-12">
               <form method="POST" action="{{Route('search')}}" class="col-md-6 search_form" id="postSearchDataForm">
                  <div class="form-group">
                     <label>Mode : </label>
                     <span> Newly Registered :</span>
                     <input type="radio" checked name="mode" value="newly registered" @if(Input::get('newly_registered')) checked @endif>
                     <span> To Be Expired (1 month) :</span>
                     <input type="radio" name="mode" value="getting expired" @if(Input::get('getting_expired')) checked @endif>
                  </div>

                  <div class="form-group">
                     <label>Domain Name : </label>
                     <input type="text" value="{{ Input::get('domain_name') }}" name="domain_name" id="domain_name" class="form-control">
                  </div>
                  <div class="form-group">
                     <label>Registrant Country : </label>
                     <input type="text" value="{{ Input::get('registrant_country') }}" name="registrant_country" id="registrant_country" class="form-control">
                  </div>
                  <div class="form-group">
                     <label>Registrant State : </label>
                     <input type="text" value="{{ Input::get('registrant_state') }}" name="registrant_state" id="registrant_state" class="form-control">
                  </div>
                  <div>
                    <label>zip : </label>
                    <input type="text" name="registrant_zip" value="{{Input::get('registrant_zip')}}">
                  </div>
                  <div class="form-group">
                     <label>Domains Create Date</label><br>
                     <div class="row">
                     <div class="col-sm-6">

                     <div class="row">
                     <div class="col-sm-6">
                     <input style="width: 150px" type="date" value="{{ Input::get('domains_create_date') }}" name="domains_create_date" id="registered_date" class="form-control" placeholder="From Date">
                     </div>
                     <div class="col-sm-6">
                     <input style="width: 150px" type="date" value="{{ Input::get('domains_create_date2') }}" name="domains_create_date2" id="registered_date2" class="form-control" placeholder="To Date">
                     </div>
                     </div>

                     </div>
                     </div>

                  </div>
                  <div class="from-group">
                     <label>Select Domains Extensions</label>
                     <dl class="dropdown">
                        <dt>
                           <a href="#">
                              <span class="hida">Select</span>    
                              <p class="multiSel"></p>
                           </a>
                        </dt>
                        <dd>
                           <div class="mutliSelect">
                              <ul>
                                 <li>
                                    <input type="checkbox" name="domain_ext[0]" value="com" @if(isset($domainExtarray) && $domainExtarray['domain_ext'][0]=='com') checked @endif/>com
                                 </li>
                                 <li>
                                    <input type="checkbox" name="domain_ext[1]" value="io" @if(isset($domainExtarray) && $domainExtarray['domain_ext'][1]=='io') checked @endif />io
                                 </li>
                                 <li>
                                    <input type="checkbox" name="domain_ext[2]" value="net" @if(isset($domainExtarray) && $domainExtarray['domain_ext'][2]=='net') checked @endif />net
                                 </li>
                                 <li>
                                    <input type="checkbox" name="domain_ext[3]" value="org" @if(isset($domainExtarray) && $domainExtarray['domain_ext'][3]=='org') checked @endif />org
                                 </li>
                                 <li>
                                    <input type="checkbox" name="domain_ext[4]" value="gov" @if(isset($domainExtarray) && $domainExtarray['domain_ext'][4]=='gov') checked @endif/>gov
                                 </li>
                                 <li>
                                    <input type="checkbox" name="domain_ext[5]" value="edu" @if(isset($domainExtarray) && $domainExtarray['domain_ext'][5]=='edu') checked @endif />edu
                                 </li>
                                 <li>
                                    <input type="checkbox" name="domain_ext[6]" value="in" @if(isset($domainExtarray) && $domainExtarray['domain_ext'][6]=='in') checked @endif/>in
                                 </li>
                              </ul>
                           </div>
                        </dd>
                        <!-- <button>Filter</button> -->
                     </dl>
                  </div>
                  <div class="form-group">
                     <label>cell number</label>
                     <input type="checkbox" name="cell_number" value="cell number" @if(Input::get('cell_number')) checked @endif >
                     <label>landline number</label>
                     <input type="checkbox" name="landline_number" value="landline number" @if(Input::get('landline_number')) checked @endif>
                     <label>Data Per-Page</label>
                     <select id="pagination" name="pagination">
                     <option value="10" @if(Input::get('pagination')=='10') selected @endif>10</option>
                     <option value="20" @if(Input::get('pagination')=='20') selected @endif>20</option>
                     <option value="50" @if(Input::get('pagination')=='50') selected @endif>50</option>
                     <option value="100" @if(Input::get('pagination')=='100') selected @endif>100</option>
                     <option value="200" @if(Input::get('pagination')=='200') selected @endif>200</option>
                     <option value="500" @if(Input::get('pagination')=='500') selected @endif>500</option>
                     </select>
                  </div>
                  <div class="row">

                  <div class="col-md-6 col-sm-6">
                     <label>Sort filter</label>
                     <select id="sort" name="sort">
                     <option value="unlocked_asnd" @if(Input::get('sort')=='unlocked_asnd') selected @endif>unlocked_asnd</option>
                     <option value="unlocked_dcnd" @if(Input::get('sort')=='unlocked_dcnd') selected @endif>unlocked_dcnd</option>
                     <option value="domain_count_asnd" @if(Input::get('sort')=='domain_count_asnd') selected @endif>domain_count_asnd</option>
                     <option value="domain_count_dcnd" @if(Input::get('sort')=='domain_count_dcnd') selected @endif>domain_count_dcnd</option>
                     </select>
                  </div>
                  <div class="col-md-6 col-sm-6">
                  
                  <input class="btn btn-info pull-right" type="submit" name="Submit" value="Submit">
                  </div>
                  </div>

                  <div style="border: 4px solid #a1a1a1;margin-top: 15px;padding: 10px;">
                  
                  <div class="row form-group">
                  <div class="col-md-4 col-sm-3">
                     <label>DomainCount :</label> <br>
                  </div>
                  <div class="col-md-4 col-sm-3">   	
                     <select name="gt_ls_domaincount_no" id="gt_ls_domaincount_no">
                        <option value="0" <?php if(Input::get('gt_ls_domaincount_no')==0) { echo "selected";} ?>>Select</option>
                        <option value="1" <?php if(Input::get('gt_ls_domaincount_no')==1) { echo "selected";} ?>>Greater than</option>
                        <option value="2" <?php if(Input::get('gt_ls_domaincount_no')==2) { echo "selected";} ?>>Lesser Than</option>
                        <option value="3" <?php if(Input::get('gt_ls_domaincount_no')==3) { echo "selected";} ?>>Equals</option>
                     </select>
                  </div>
                  <div class="col-md-4 col-sm-3">   
                     <input class="form-control" type="text" name="domaincount_no" id="domaincount_no" value="{{ Input::get('domaincount_no') }}">
                  </div>   

                  </div> 
                  <div class="row">
                  	<div class="col-md-4 col-sm-3">  
                     <label>LeadsUnlocked :</label> 
                    </div>
                    <div class="col-md-4 col-sm-3">   
                     <select name="gt_ls_leadsunlocked_no" id="gt_ls_leadsunlocked_no" >
                        <option value="0" <?php if(Input::get('gt_ls_leadsunlocked_no')==0) { echo "selected";} ?>>Select</option>
                        <option value="1" <?php if(Input::get('gt_ls_leadsunlocked_no')==1) { echo "selected";} ?>>Greater than</option>
                        <option value="2" <?php if(Input::get('gt_ls_leadsunlocked_no')==2) { echo "selected";} ?>>Lesser Than</option>
                        <option value="3" <?php if(Input::get('gt_ls_leadsunlocked_no')==3) { echo "selected";} ?>>Equals</option>
                     </select>
                     </div>
                     <div class="col-md-4 col-sm-3">  
                     <input class="form-control" type="text" name="leadsunlocked_no" id="leadsunlocked_no" value="{{ Input::get('leadsunlocked_no') }}"> 
                     </div>

                 </div>  
                   
                 <br>
                     <div class="btn btn-primary pull-right" id="refine_searchID">Refine Search</div>
                     <div class="clearfix"></div>
                  </div>
               </form>
            </div>
         </div>