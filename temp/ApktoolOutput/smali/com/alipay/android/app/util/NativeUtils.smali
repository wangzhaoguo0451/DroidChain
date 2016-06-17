.class public Lcom/alipay/android/app/util/NativeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native deserializeResponse(Ljava/lang/String;)Lada;
.end method

.method public static native getClientKey()Ljava/lang/String;
.end method

.method public static native serializeRequest(Lacz;)Ljava/lang/String;
.end method
