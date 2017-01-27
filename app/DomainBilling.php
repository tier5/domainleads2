<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DomainBilling extends Model
{
    protected $table='domains_billing';

    public function each_domain()
    {
    	return $this->hasOne('each_domains' , 'unique_hash' , 'unique_hash');
    }

    public function domains_technical()
    {
    	return $this->hasOne('domains_technical' , 'unique_hash' , 'unique_hash');
    }

    public function domains_status()
    {
    	return $this->hasOne('domains_status' , 'unique_hash' , 'unique_hash');
    } 

    public function domains_nameserver()
    {
    	return $this->hasOne('domains_nameserver' , 'unique_hash' , 'unique_hash');
    }

     public function domains_info()
    {
    	return $this->hasOne('domains_info' , 'unique_hash' , 'unique_hash');
    }

	public function domains_administrative()
    {
    	return $this->hasOne('domains_administrative' , 'unique_hash' , 'unique_hash');
    }
}
