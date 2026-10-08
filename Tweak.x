#import <Foundation/Foundation.h>
#import "API/APIClient.h"

%ctor {
    // Masukkan token V3 Server Key kamu di sini
    apiclient_set_token("F7fgqwpqmMGZdN03UkvyDTjjI+fuA1z0zQ2AcH+umwSNi0nwolEDstMEOrlEsxHyiUUj4M/7hRwYD6VApIf9c3kkgQYy6dWE/B69+eT5F0g=");

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
