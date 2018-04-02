// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

package ballerina.http;

@Description {value:"Mock service endpoint which does not open a listening port."}
public struct NonListeningServiceEndpoint {
    Connection conn;
    ServiceEndpointConfiguration config;
}

public function <NonListeningServiceEndpoint ep> init (ServiceEndpointConfiguration config) {
    ep.config = config;
    var err = ep.initEndpoint();
    if (err != null) {
        throw err;
    }
}

public native function <NonListeningServiceEndpoint ep> initEndpoint () returns (error);

public native function <NonListeningServiceEndpoint ep> register (typedesc serviceType);

public native function <NonListeningServiceEndpoint ep> start ();

public native function <NonListeningServiceEndpoint ep> getClient() returns Connection;

public native function <NonListeningServiceEndpoint ep> stop ();