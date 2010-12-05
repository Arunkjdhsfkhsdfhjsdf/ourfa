# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Ourfa.t'

#########################

# change 'tests => 2' to 'tests => last_test_to_print';

use Test::More tests => 2;
BEGIN { use_ok('Ourfa') };


my $fail = 0;
foreach my $constname (qw(
	OURFA_ATTR_CALL OURFA_ATTR_CHAP_CHALLENGE OURFA_ATTR_CHAP_RESPONSE
	OURFA_ATTR_DATA OURFA_ATTR_DATA_ANY OURFA_ATTR_DATA_DOUBLE
	OURFA_ATTR_DATA_INT OURFA_ATTR_DATA_IP OURFA_ATTR_DATA_LONG
	OURFA_ATTR_DATA_STRING OURFA_ATTR_LOGIN OURFA_ATTR_LOGIN_TYPE
	OURFA_ATTR_SESSION_ID OURFA_ATTR_SESSION_IP OURFA_ATTR_SSL_REQUEST
	OURFA_ATTR_TERMINATION OURFA_ERROR_ACCESS_DENIED
	OURFA_ERROR_ATTR_TOO_LONG OURFA_ERROR_AUTH_REJECTED OURFA_ERROR_HASH
	OURFA_ERROR_INVALID_PACKET OURFA_ERROR_INVALID_PACKET_FORMAT
	OURFA_ERROR_NOT_CONNECTED OURFA_ERROR_NOT_IMPLEMENTED
	OURFA_ERROR_NO_DATA OURFA_ERROR_OTHER OURFA_ERROR_PKT_TERM
	OURFA_ERROR_SESSION_ACTIVE OURFA_ERROR_SOCKET OURFA_ERROR_SSL
	OURFA_ERROR_SYSTEM OURFA_ERROR_WRONG_ATTRIBUTE
	OURFA_ERROR_WRONG_CLIENT_CERTIFICATE
	OURFA_ERROR_WRONG_CLIENT_CERTIFICATE_KEY OURFA_ERROR_WRONG_HOSTNAME
	OURFA_ERROR_WRONG_INITIAL_PACKET OURFA_ERROR_WRONG_LOGIN_TYPE
	OURFA_ERROR_WRONG_SESSION_ID OURFA_ERROR_WRONG_SSL_TYPE
	OURFA_FUNC_CALL_STATE_BREAK OURFA_FUNC_CALL_STATE_END
	OURFA_FUNC_CALL_STATE_ENDCALLPARAMS OURFA_FUNC_CALL_STATE_ENDFOR
	OURFA_FUNC_CALL_STATE_ENDFORSTEP OURFA_FUNC_CALL_STATE_ENDIF
	OURFA_FUNC_CALL_STATE_NODE OURFA_FUNC_CALL_STATE_START
	OURFA_FUNC_CALL_STATE_STARTCALLPARAMS OURFA_FUNC_CALL_STATE_STARTFOR
	OURFA_FUNC_CALL_STATE_STARTFORSTEP OURFA_FUNC_CALL_STATE_STARTIF
	OURFA_LIB_VERSION OURFA_LOGIN_CARD OURFA_LOGIN_SYSTEM OURFA_LOGIN_USER
	OURFA_OK OURFA_PKT_ACCESS_ACCEPT OURFA_PKT_ACCESS_REJECT
	OURFA_PKT_ACCESS_REQUEST OURFA_PKT_SESSION_CALL OURFA_PKT_SESSION_DATA
	OURFA_PKT_SESSION_INIT OURFA_PKT_SESSION_TERMINATE OURFA_PROTO_VERSION
	OURFA_SCRIPT_CALL_END OURFA_SCRIPT_CALL_END_REQ
	OURFA_SCRIPT_CALL_END_RESP OURFA_SCRIPT_CALL_NODE OURFA_SCRIPT_CALL_REQ
	OURFA_SCRIPT_CALL_RESP OURFA_SCRIPT_CALL_START
	OURFA_SCRIPT_CALL_START_REQ OURFA_SCRIPT_CALL_START_RESP
	OURFA_SSL_TYPE_CRT OURFA_SSL_TYPE_NONE OURFA_SSL_TYPE_RSA_CRT
	OURFA_SSL_TYPE_SSL3 OURFA_SSL_TYPE_TLS1 OURFA_TIME_MAX OURFA_TIME_NOW
	OURFA_XMLAPI_IF_EQ OURFA_XMLAPI_IF_GT OURFA_XMLAPI_IF_NE
	OURFA_XMLAPI_NODE_ADD OURFA_XMLAPI_NODE_BREAK OURFA_XMLAPI_NODE_CALL
	OURFA_XMLAPI_NODE_DIV OURFA_XMLAPI_NODE_DOUBLE OURFA_XMLAPI_NODE_ERROR
	OURFA_XMLAPI_NODE_FOR OURFA_XMLAPI_NODE_IF OURFA_XMLAPI_NODE_INTEGER
	OURFA_XMLAPI_NODE_IP OURFA_XMLAPI_NODE_LONG OURFA_XMLAPI_NODE_MESSAGE
	OURFA_XMLAPI_NODE_MUL OURFA_XMLAPI_NODE_OUT OURFA_XMLAPI_NODE_PARAMETER
	OURFA_XMLAPI_NODE_REMOVE OURFA_XMLAPI_NODE_ROOT OURFA_XMLAPI_NODE_SET
	OURFA_XMLAPI_NODE_SHIFT OURFA_XMLAPI_NODE_STRING OURFA_XMLAPI_NODE_SUB
	OURFA_XMLAPI_NODE_UNKNOWN)) {
  next if (eval "my \$a = $constname; 1");
  if ($@ =~ /^Your vendor has not defined Ourfa macro $constname/) {
    print "# pass: $@";
  } else {
    print "# fail: $@";
    $fail = 1;
  }

}

ok( $fail == 0 , 'Constants' );
#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

