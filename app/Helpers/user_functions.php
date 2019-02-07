<?php
use DateTime;
function generateDateRange($start_date,$end_date)
{
    $dates = [];
    if($start_date == null && $end_date == null)
    {
    	return null;
    }
    else if($start_date == null)
    {
    	$dates[0] = $end_date;
        return $dates;
    }
    else if($end_date == null)
    {
    	$dates[0] = $start_date;
    	return $dates;
    }
    else
    {
    	$day = 3600*24;
    	if(strtotime($start_date) > strtotime($end_date) )
		{
			$temp = $start_date;
			$start_date = $end_date;
			$end_date = $temp;
		}
        $dates[0] = $start_date;
        $dates[1] = $end_date;
        return $dates;

		// $final_time = strtotime($end_date);
        // for($d = strtotime($start_date); $d <= $final_time ; $d += $day) 
        //  {
	 //        $dates[] = date('Y-m-d',$d);
	 //    }
  //   	return $dates;
    }
}

function customMaskDomain($domain) {
    $revDomains = array_reverse(explode('.', $domain));
    return '************.'.$revDomains[0];
}

function getQueryParamsCustom($arr) {
    $str = '';
    if(count($arr) == 0) {
        return $str;
    }
    foreach($arr as $key => $each) {
        $str .= strlen($str) > 0 ? '&'.$key.'='.$each : '?'.$key.'='.$each;
    }
    return $str;
}

function convertToMDY($date) {
    if(DateTime::createFromFormat('d/m/Y', $date)) {
        return DateTime::createFromFormat('d/m/Y', $date)->format('m-d-Y');
    } else if(DateTime::createFromFormat('m/d/Y', $date)) {
        return DateTime::createFromFormat('m/d/Y', $date)->format('m-d-Y');
    } else if(DateTime::createFromFormat('Y/m/d', $date)) {
        return DateTime::createFromFormat('Y/m/d', $date)->format('m-d-Y');
    } else if(DateTime::createFromFormat('Y-m-d', $date)) {
        return DateTime::createFromFormat('Y-m-d', $date)->format('m-d-Y');
    } else if(DateTime::createFromFormat('d-m-Y', $date)) {
        return DateTime::createFromFormat('d-m-Y', $date)->format('m-d-Y');
    } else {
        return $date;
    }
}
    
?>