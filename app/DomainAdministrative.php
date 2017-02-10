<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DomainAdministrative extends Model
{
    protected $table='domains_administrative';

    public function each_domain()
    {
    	return $this->hasOne('each_domains' , 'domain_name' , 'domain_name');
    }

    public function domains_technical()
    {
    	return $this->hasOne('domains_technical' , 'domain_name' , 'domain_name');
    }

    public function domains_status()
    {
    	return $this->hasOne('domains_status' , 'domain_name' , 'domain_name');
    } 

    public function domains_nameserver()
    {
    	return $this->hasOne('domains_nameserver' , 'domain_name' , 'domain_name');
    }

     public function domains_info()
    {
    	return $this->hasOne('domains_info' , 'domain_name' , 'domain_name');
    } 

	public function domains_billing()
    {
    	return $this->hasOne('domains_billing' , 'domain_name' , 'domain_name');
    }
    
}
