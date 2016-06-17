.class public abstract Lcom/alipay/android/app/pay/IAlixPay$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/app/pay/IAlixPay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.alipay.android.app.pay.IAlixPay"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/app/pay/IAlixPay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/alipay/android/app/pay/IAlixPay;
    .locals 2
    .parameter

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v0, "com.alipay.android.app.pay.IAlixPay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/android/app/pay/IAlixPay;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/alipay/android/app/pay/IAlixPay;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lww;

    invoke-direct {v0, p0}, Lww;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v0, "com.alipay.android.app.pay.IAlixPay"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.alipay.android.app.pay.IAlixPay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/IAlixPay$Stub;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "com.alipay.android.app.pay.IAlixPay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/IAlixPay$Stub;->payWithURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :sswitch_3
    const-string v0, "com.alipay.android.app.pay.IAlixPay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/IAlixPay$Stub;->isAuthenticated()Z

    move-result v0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 79
    :sswitch_4
    const-string v0, "com.alipay.android.app.pay.IAlixPay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/pay/IAlixPayCallback$Stub;->a(Landroid/os/IBinder;)Lcom/alipay/android/app/pay/IAlixPayCallback;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/IAlixPay$Stub;->registerCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v0, "com.alipay.android.app.pay.IAlixPay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/pay/IAlixPayCallback$Stub;->a(Landroid/os/IBinder;)Lcom/alipay/android/app/pay/IAlixPayCallback;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/IAlixPay$Stub;->unregisterCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
