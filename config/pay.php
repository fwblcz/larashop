<?php

return [
    'alipay' => [
        'app_id'         => '2016101700705075',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoAnBfRgjAOySp3AP4CVZ5cy+0j0SxROHWeIEHA1Gp9JqmNFuWZBqJ1EvdgXbvuScyfxmaybeTXR2IvRZ622JDMYDCoh0/8+3XSWi02mRzA/svXVDR+hP5oYToqcUykPtn34icC6e1y1syM5js7HCZStgWEWKsPl4kcK8oCh1ZjWWufQ4qNmGnyx8QDlBmn2S77E0XOlN4WBrTQKgCBLz3DLinuWWhS+MYI8ptqCTa8zq7WuCjK0caeQMBIWCYbMJla+Ili+lvd14lbBY5W1nrLQpFFdA3o15x93x8lSpXzk6XoEQYxHUL+XbKmtX8LdHe0ETmGtjfKt81zGE1tws0QIDAQAB',
        'private_key'    => 'MIIEpQIBAAKCAQEAwmYBRAWg/6mFfdOuQ+ac5OLZQPY8wB0vW37nkAvEr6OlDCUZrt4A7P/WEU/73u6HuzQIGGwGArMrp+3jbRTCAeWr+n+Bixdpj/7e/N9oik2t8XsLn6R7F5/CQ1V9w8VqWOsZJnOV7259GPfS4HC9PHujs53rmpKYbL2AQSExMy/zyj8joQI+GhRuY+Cg93oykOoN49oMDpQbx6Uiphc9oztf0LtvSmcDgX+mnSlM+2ID6iX1wGe/HYSBLZLtH38I/LYjeNo7leeGgPIBKV7JstVHOhEGhQPcgfBK2+oEXbtN8cpTh81EY8/BvuAXh24YA9idocXb6g0NrX5256f5dQIDAQABAoIBAQCdX7TAm4n1zwfZkEdwgr4a8aaNV4pgwH+5I2hVDaHhyqnvxg0fqmu3cXmcNFMj65iILZwsIS9QejnqTcQiZ36TyJnMRfLaZk64Gs3sivP3muEpL8J+L8rSmivLFOemWCg66cBHh6Um2xx83QujVMFtuG4TF9JHJUwuI88zaqqI02qdtBnqbseVdzgRKpUrFzTi3MkllADL/SDTryvVWLOboFia0U5KmG2WLb3b133C7olEIxVPRmVH4fNY4lyBjMYow55vv8BjuRF0QCzMCUVAqB0BQyksjkk86978Oz7jy863Rs/Hoa6Y+GC4qFCGR2JBx63w4CWtMQpdCMUxai3hAoGBAPmoguEFT5rloBSwu6XTC5FcVa15RZ5frPb+glB5PddbKV7GTEnFbO2//kMxF3Sa4l4FzW+bXBxrXVusiHgY8xeet1Q24wQONCWzKc6R+8LoruuB9CjAfhOW6DiehU8l37gs3/T7bgo0KpgnG9N+fZs9wTGYZTUumFzG/6qwnPM5AoGBAMdWJds2LW28Yrivutv0M+DfkjXHfiYWU4ItkAHtcZm3ZG54YtFUhNn7whz4wEIVwVAdxf7dO9Omnp8oRzk8t7VpZLxbDQfod64dveyxWJGnZalV0rEFMnWztxJF6d4qG4Guew6UFdDdHYmqtwjDrKNPzW8cx3fqrSmKCNcZh8wdAoGAU/qQE9syfNsy7uLILC6CnKHfnBvIBE8QooDYGvO9jpx2nQ+9B6+mRY8omzd/OVUEQjZXdWxgHpsq6zRtL2DNHKvh5S0VTf7tIaVTsc2/Tz/v3v52v+KIRlSjxq/kDcyipZRKvWB6EmqbzVSScqEA5WBvhRxLJwmGbObvh14jXVkCgYEAs4bS8WsJ3xsbjlo2YIK/dnfkpqrU4liZPVTrrdC7z0VsHlIuLXmBbRFg8dbW0K3nPNCT0cZOa4BUu+L6woH8slYJc9pNEiI8J4SB2PqgWg35cVjqOKQFnhwNdVeiGYSy4UjTa33TaBi80Y/+6NXSVgM5cijpPQcOjarT62YC98ECgYEAmlg4oNfcqfnu0+lMKquNV0tUD0K6XW0jelTkM9GXBAEKg5x5NziL+C/V88a0zePZ7DK8Q93OhOBmYddciH13LvrWTrazLdCrk3PRrzQurtTdZCPh8ckkTXiTJlP9OAa825urjXoXZjJVBJPhRO8ChzczqBZ1WcOAOp0H0wRhYc8=',
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id'      => '',
        'mch_id'      => '',
        'key'         => '',
        'cert_client' => '',
        'cert_key'    => '',
        'log'         => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];