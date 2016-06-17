.class public abstract Lcom/redstone/sdk/enabler/remote/IRsSystemService$Stub;
.super Landroid/os/Binder;
.source "IRsSystemService.java"

# interfaces
.implements Lcom/redstone/sdk/enabler/remote/IRsSystemService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.redstone.sdk.enabler.remote.IRsSystemService"

    invoke-virtual {p0, p0, v0}, Lcom/redstone/sdk/enabler/remote/IRsSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/redstone/sdk/enabler/remote/IRsSystemService;
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
    const-string v0, "com.redstone.sdk.enabler.remote.IRsSystemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/redstone/sdk/enabler/remote/IRsSystemService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/redstone/sdk/enabler/remote/IRsSystemService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lbub;

    invoke-direct {v0, p0}, Lbub;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "com.redstone.sdk.enabler.remote.IRsSystemService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.redstone.sdk.enabler.remote.IRsSystemService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/redstone/sdk/enabler/remote/IRsServiceObserver$Stub;->a(Landroid/os/IBinder;)Lcom/redstone/sdk/enabler/remote/IRsServiceObserver;

    move-result-object v3

    .line 54
    invoke-virtual {p0, v1, v2, v3}, Lcom/redstone/sdk/enabler/remote/IRsSystemService$Stub;->a(Ljava/lang/String;Ljava/lang/String;Lcom/redstone/sdk/enabler/remote/IRsServiceObserver;)I

    move-result v1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
