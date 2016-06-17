.class public abstract Lcom/wandoujia/connection/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/wandoujia/connection/IConnectionService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.wandoujia.connection.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/wandoujia/connection/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/wandoujia/connection/IConnectionService;
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
    const-string v0, "com.wandoujia.connection.IConnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/wandoujia/connection/IConnectionService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/wandoujia/connection/IConnectionService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcsm;

    invoke-direct {v0, p0}, Lcsm;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "com.wandoujia.connection.IConnectionService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.wandoujia.connection.IConnectionService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/connection/IConnectionServiceCallback$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/connection/IConnectionServiceCallback;

    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/wandoujia/connection/IConnectionService$Stub;->a(Lcom/wandoujia/connection/IConnectionServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v1, "com.wandoujia.connection.IConnectionService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/connection/IOptimizeCallback;

    move-result-object v1

    .line 59
    invoke-virtual {p0, v1}, Lcom/wandoujia/connection/IConnectionService$Stub;->a(Lcom/wandoujia/connection/IOptimizeCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string v1, "com.wandoujia.connection.IConnectionService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/connection/IConnectionServiceCallback$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/connection/IConnectionServiceCallback;

    move-result-object v1

    .line 68
    invoke-virtual {p0, v1}, Lcom/wandoujia/connection/IConnectionService$Stub;->b(Lcom/wandoujia/connection/IConnectionServiceCallback;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
