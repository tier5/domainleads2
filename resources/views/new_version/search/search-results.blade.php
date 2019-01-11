<!DOCTYPE html>
<html lang="en">

{{-- Include common user panel head used for all dashboard components 
    * Input title (Optional)
    * Brings in css and js files
    --}}
@include('section.user_panel_head', ['title' => 'Domainleads | Search Results'])

<body>

    {{-- Loader icon in the platform --}}
    @include('new_version.shared.loader')

    <div class="container">

        {{-- Include common user panel header used for all dashboard components 
            * Input user object (compulsary)
            --}}
        @include('section.user_panel_header', ['user' => $user])
        
        <section class="mainBody">
            <div class="leftPanel leadUnlock">
             
                {{-- Include advanced sdearch options for more filtering on current result set
                    * Input --}}
                @include('new_version.shared.advanced-search-box')

                <div class="dataTableArea">
                    <div class="dataTableHeader">
                        <div class="unlockInfo">
                            <strong>{{isset($totalDomains) ? $totalDomains : 0}}</strong> domains found against your search
                        </div>
                        <div class="dataTableHeaderRight">
                            <button class="refineSearch">
                                <div class="icon"><img src="{{config('settings.APPLICATION-DOMAIN')}}/public/images/Icon_refine_search.png" alt=""></div>
                                <p>Refine your search</p>
                            </button>
                            <div class="pageViewControl">
                                <label for="">SHOW:</label>
                                <div class="selectBox">
                                    <select class="select">
                                        <option value="20">20 per page</option>
                                        <option value="20">50 per page</option>
                                        <option value="20">100 per page</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    {{-- Include common search results table : this is reused in multiple places across different user profiles and admin --}}        
                    @include('new_version.shared.search-results-table', [
                        'record'        =>  isset($record) ? $record : [],
                        'users_array'   =>  isset($users_array) ? $users_array : [],
                        'restricted'    =>  isset($restricted) ? $restricted : false,
                        'user'          =>  $user
                    ])
                </div>
            </div>

            {{-- Include common dashboard right panel --}}
            @include('new_version.shared.right-panel')
            
            {{-- Include common footer --}}
            @include('new_version.shared.dashboard-footer', ['class' => 'footer mobileOnly'])
            
        </section>

        <div class="pagination-parent">
            <div class="pagination-cl">
                @if(isset($totalPage) && $totalPage > 0)
                <div class="pg_" id="pages">
                    <button class="pg_btn" value="prev" id="pg_prev">Previous</button>
                    <?php $i=$page-1; ?>
                    @while(++$i <= $totalPage)
                        @if($i<10)
                            <button class="pg_btn @if($i==1) btn-info @endif" id="pg_{{$i}}" value="{{$i}}">{{$i}}</button>
                        @else
                            <button class="pg_btn" id="pg_{{$i}}" value="{{$i}}" style="display:none;">{{$i}}</button>
                        @endif
                    @endwhile
                        <button class="pg_btn" value="next" id="pg_next">Next</button>
                </div>
                @endif
            </div>
        </div>

        @include('new_version.shared.dashboard-footer', ['class' => 'footer'])
    </div>

    

    {{-- Include common sticky note --}}
    @include('new_version.shared.sticky-note')

    <script src="{{config('settings.APPLICATION-DOMAIN')}}/public/js/custom2.js"></script>
    <script src="{{config('settings.APPLICATION-DOMAIN')}}/public/js/common.js"></script>
    <script>
        @if(count($record) > 0)
        var thisPage     = parseInt("{{$page}}");
        var totalPage    = parseInt("{{$totalPage}}");
        var URL          = "{{url('/')}}";
        var left_most    = 1;
        var per_page     = parseInt($('#pagination').val()); 
        var right_most   = Math.ceil(parseInt("{{$totalLeads}}")/per_page);
        var meta_id      = parseInt("{{$meta_id}}");
        var display_limit= 5;

        $(function() {
            pages();
            setup_pages();
        });

        $('#next').click(function(e){
            thisPage += 5;
            setup_pages();
        });

        $('#previous').click(function(e){
            thisPage -= 5;
            setup_pages();
        });

        $('.pg_btn').click(function(e){
            e.preventDefault();
            load_new_page(parseInt($(this).val()));
        });

        $('#pg_next').click(function(e){
            e.preventDefault();
            load_new_page(parseInt(thisPage)+1);
            adjust();
        });

        $('#pg_prev').click(function(e){
            e.preventDefault();
            load_new_page(parseInt(thisPage)-1);
            adjust();
        });

        function adjust()
        {
            if(thisPage == left_most) {
                $('#pg_prev').hide();
            }
            else if(thisPage == right_most) {
                $('#pg_next').hide();
            }
            else {
                $('#pg_next').show();
                $('#pg_prev').show();
            }
            
            if(totalPage < 2*display_limit)
            {
                $('#pg_next').hide();
                $('#pg_prev').hide();
            }
        }

        function pages()
        {
            low  = parseInt(thisPage)-display_limit;
            high = parseInt(thisPage)+display_limit;   
            if(low < 0) {
                high = high - low;
                low  = low  - low;
            }
            
            if(high > totalPage) {
                high = high - (high - totalPage);
                low  = low - (high - totalPage);
            }
            
            $('.pg_btn').each(function(i,j){
                if(i>= low && i<=high) $('#pg_'+i).show();
                else $('#pg_'+i).hide();
            });
            adjust();
        }

        function setup_pages()
        {
            $('#page_forms').hide();
            var pages     = [];
            var limit = 9;
            l  = parseInt(thisPage) -5;
            h  = parseInt(thisPage) +5;
            l_most = 0;
            r_most =

            $('.page_form').each(function(i,j) {
                if(thisPage == 1) {
                    if(i<10) $(this).show();
                    else $(this).hide();
                } else {
                    if(i>=l && i<=h) {
                        $(this).show();
                        console.log('++show-- ',i,thisPage,l,h);
                    } else {
                        $(this).hide();
                        console.log('++hide-- ',i,thisPage);
                    }
                }
            });
            
            if(thisPage <= left_most+limit) {
                $('#previous').hide();
            } else if(thisPage >= right_most-limit) {
                $('#next').hide();
            } else {
                $('#previous').show();
                $('#next').show();
            }
            $('#page_forms').show();
        }
   	
        function load_new_page(page) {
            console.log(page);
            if(isNaN(page)) return false;
            // $('#table').hide();
            // $('#ajax-loader').show();
            var reg_date        = $('#registered_date').val();
            var reg_date2       = $('#registered_date2').val();
            var expiry_date     = $('#domains_expired_date').val();
            var expiry_date2    = $('#domains_expired_date2').val();
            var mode            = $('#mode').val();
            var domain_name     = $('#domain_name').val();
            var domain_ext      = $('#domain_ext').val();
            var num_type        = $('#number_type').val();
            var total_domains   = "{{$totalDomains}}";
            var total_leads     = "{{$totalLeads}}";
            var lead_list       = $(this).find('.leads_list_cls').val();
            $('#pg_'+thisPage).removeClass('btn-info');
            //var page = $(this).val();

            $.ajax({
                url  : "{{route('ajax_search_paginated_subadmin')}}",
                type : 'post',
                dataType: 'json',
                data : {_token : "{{csrf_token()}}" ,
                    meta_id             : meta_id,
                    thisPage            : parseInt(page),
                    pagination          : per_page,
                    totalPage           : totalPage,
                    domain_ext          : domain_ext,
                    domain_name         : domain_name,
                    domains_create_date : reg_date,
                    domains_create_date2: reg_date2,
                    mode : mode,
                    domains_expiry_date : expiry_date,
                    domains_expiry_date2 : expiry_date2,
                }, beforeSend: function() {

                }, success:function(response) {
                    console.log(response);
                    if(response.status == true) {
                        $('#search-result-container').empty().append(response.view);
                        // $('.table-container').empty();
                        // $('.table-container').append(response.view);
                        thisPage = parseInt(page);
                        adjust();
                        $('#pg_'+thisPage).addClass('btn-info');
                        pages();
                    } else {
                        thisPage = parseInt(page);
                        adjust();
                        $('#pg_'+thisPage).addClass('btn-info');
                        pages();
                    }
                    // $('#table').show();
                    // $('#ajax-loader').hide();
                }, error : function(er) {
                    console.log(er);
                }
            });
        }

        function clickLink(t, key) {
            var restrict = $('#domain_name_'+key).data('restrict');
            if(restrict == 1) {
                alert('You dont have access over this data.');
            } else {
                window.open($(t).data('ref'));
            }
        }

        function unlock(reg_em , key)
        {
            var id = '{{$user->id}}';
            var domain_name = $('#domain_name_'+key).data('domainname');
                $.ajax({
                    type : 'POST',
                    url  : "{{route('unlockleed')}}",
                    data : { _token:'{{csrf_token()}}',
                        registrant_email:reg_em ,
                        user_id:id, 
                        domain_name: domain_name,
                        key: key
                    }, beforeSend: function() {
                        // Show loader
                    }, success :function(response) {
                        if(response.status) {
                            $('#tr_'+key).empty().append(response.view);
                        } else {
                            alert(response.message);
                        }
                    }, error : function(er) {
                        console.error(er);
                    }
            });
        }
        @endif

        var canvas = document.getElementById('crart');
        var context = canvas.getContext('2d');
        var al=0;
        var av = 0;
        var start=4.72;
        var cw=context.canvas.width/2;
        var ch=context.canvas.height/2;
        var diff;

        var targetVal = 50;
        var currentVal = 40;

        var radius = 60;
        var chartVal = (currentVal / targetVal) * 100;

        var gradient = context.createLinearGradient(0, 0, 0, 140);
            gradient.addColorStop(0, '#48e4b3');
            gradient.addColorStop(0.5, '#3cbec1');
            gradient.addColorStop(1, '#48e4b3');

        function progressBar(){
            diff=(al/100)*Math.PI*2;
            context.clearRect(0,0,400,400);
            context.beginPath();
            context.arc(cw,ch,radius,0,2*Math.PI,false);
            context.fillStyle='#FFF';
            context.fill();
            context.strokeStyle='#f6f6f6';
            context.stroke();
            context.fillStyle='#000';
            context.strokeStyle= gradient;
            context.textAlign='center';
            context.lineWidth=10;
            context.font = '21px "Avenir LT Std 95 Black"';
            context.fillStyle = '#333';
            context.beginPath();
            context.arc(cw,ch,radius,start,diff+start,false);
            context.stroke();
            context.lineCap = 'round';
            context.fillText(av+"/50" ,65, 75 );
            if(al>=chartVal){
                clearTimeout(bar);
            }
                al++;
                av++;
            if(av>=currentVal){
                av = currentVal;
            }
                
        }
        var bar = setInterval(progressBar, 10);
    </script>

    <script>
        $(document).ready(function(){
            $(".refineSearch").click(function(){
                $(".filterPopup").fadeIn();
            });
            $(".closeFilterPopup").click(function(){
                $(".filterPopup").fadeOut();
            });

            setTimeout(() => {
                $('#loader-icon').hide();
            }, 2000);
        });
    </script>
</body>
</html>