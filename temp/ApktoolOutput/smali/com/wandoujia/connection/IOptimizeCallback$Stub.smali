.class public abstract Lcom/wandoujia/connection/IOptimizeCallback$Stub;
.super Landroid/os/Binder;
.source "IOptimizeCallback.java"

# interfaces
.implements Lcom/wandoujia/connection/IOptimizeCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p0, p0, v0}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/wandoujia/connection/IOptimizeCallback;
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
    const-string v0, "com.wandoujia.connection.IOptimizeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/wandoujia/connection/IOptimizeCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/wandoujia/connection/IOptimizeCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcso;

    invoke-direct {v0, p0}, Lcso;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/connection/IScanApkPartialCallback$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/connection/IScanApkPartialCallback;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->a(Lcom/wandoujia/connection/IScanApkPartialCallback;)I

    move-result v0

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v2, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->a()Lcom/wandoujia/connection/ScanResult;

    move-result-object v2

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v2, p3, v1}, Lcom/wandoujia/connection/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    :sswitch_3
    const-string v2, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->b()Lcom/wandoujia/connection/ScanResult;

    move-result-object v2

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {v2, p3, v1}, Lcom/wandoujia/connection/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    :sswitch_4
    const-string v2, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->c()Z

    move-result v2

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :sswitch_5
    const-string v2, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->d()Z

    move-result v2

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    :sswitch_6
    const-string v2, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->e()Z

    move-result v2

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    :sswitch_7
    const-string v2, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->f()Z

    move-result v2

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    :sswitch_8
    const-string v2, "com.wandoujia.connection.IOptimizeCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 120
    invoke-virtual {p0, v2}, Lcom/wandoujia/connection/IOptimizeCallback$Stub;->a(Ljava/util/List;)Z

    move-result v2

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
