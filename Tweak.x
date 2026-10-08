#import <Foundation/Foundation.h>
#import "API/APIClient.h"

%ctor {
    // Masukkan token V3 Server Key kamu di sini
    apiclient_set_token("Iv27mdQxgHyQrWaYNVLcMSk2X32iTsUBgQKuqe3IxB4xcsimEfDywubnfKb/rMlgk9KuNYDfQ12ZlwHV0BDjS++CUWVFIdByoNxWjSuB+tTxlFj5rQZHE6Mfz0rOVZ/QKmXHoExpjJsyoCwdhHcaGg==");

    // Verifikasi kunci saat dylib di-load
    apiclient_on_login("", ^(const char* json) {
        // Logika jika key valid / login berhasil
    }, ^(const char* json) {
        // Logika jika key salah / expired
    });
}

// Opsional: Hook ke class/method aplikasi target kamu
%hook TargetClassName
- (void)targetMethodName {
    %orig;
}
%end
