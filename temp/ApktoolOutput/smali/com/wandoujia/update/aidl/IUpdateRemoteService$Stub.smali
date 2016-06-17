.class public abstract Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;
.super Landroid/os/Binder;
.source "IUpdateRemoteService.java"

# interfaces
.implements Lcom/wandoujia/update/aidl/IUpdateRemoteService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.wandoujia.update.aidl.IUpdateRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/wandoujia/update/aidl/IUpdateRemoteService;
    .locals 2
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.wandoujia.update.aidl.IUpdateRemoteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lhrc;

    invoke-direct {v0, p0}, Lhrc;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.wandoujia.update.aidl.IUpdateRemoteService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.wandoujia.update.aidl.IUpdateRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/update/aidl/IUpdateCallback$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/wandoujia/update/aidl/UpdateParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/aidl/UpdateParams;

    .line 57
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;->a(Lcom/wandoujia/update/aidl/IUpdateCallback;Lcom/wandoujia/update/aidl/UpdateParams;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 59
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 55
    goto :goto_1

    .line 63
    :sswitch_2
    const-string v0, "com.wandoujia.update.aidl.IUpdateRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/wandoujia/update/protocol/UpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/protocol/UpdateInfo;

    move-object v2, v0

    .line 72
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    sget-object v0, Lcom/wandoujia/update/aidl/UpdateParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/aidl/UpdateParams;

    .line 78
    :goto_3
    invoke-virtual {p0, v2, v0}, Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;->a(Lcom/wandoujia/update/protocol/UpdateInfo;Lcom/wandoujia/update/aidl/UpdateParams;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 80
    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 69
    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 76
    goto :goto_3

    .line 84
    :sswitch_3
    const-string v0, "com.wandoujia.update.aidl.IUpdateRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;->a()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 87
    goto :goto_0

    .line 91
    :sswitch_4
    const-string v0, "com.wandoujia.update.aidl.IUpdateRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;->b()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 94
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
