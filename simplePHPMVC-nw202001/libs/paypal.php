
<?php
/**
 * PHP Version 7

 *
 * @category Controllers_Paypal
 * @package  Controllers\Paypal
 * @author   Orlando J Betancourth <orlando.betancourth@gmail.com>
 * @license  Comercial http://
 *
 * @version CVS:1.0.0
 *
 * @link http://url.com
 */
 // Sección de requires
require_once 'vendor/autoload.php';



/**
 * Retorna el Api Context de Paypal
 *
 * @return void
 */


function getApiContext()
{
    $apiContext = new \PayPal\Rest\ApiContext(
        new \PayPal\Auth\OAuthTokenCredential(
            "ATMu-at9FvfSnEHypnkLwBverGn23qX398vkMci2g2deVzCKMX-g7fxtDfm9Cwb2q2xUAygYRNSh0g3b",
            "EEDQE20WgF4C5KW0CxqPHCpotPFPCimfRxldT-r5eVMnBCYgj0dA2P-IgMVMj1MfpyLBR89usru8FXx8"
        )
    );
    return $apiContext;
}

