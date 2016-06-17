.class public abstract Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;
.super Landroid/os/Binder;
.source "IWebDownloadInterface.java"

# interfaces
.implements Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p0, p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;
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
    const-string v0, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lgrl;

    invoke-direct {v0, p0}, Lgrl;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->a(Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_3
    const-string v0, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->b(Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_4
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 87
    :cond_1
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :sswitch_5
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 101
    :cond_2
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->c(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    :sswitch_6
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 115
    :cond_3
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->d(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    :sswitch_7
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 129
    :cond_4
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->e(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)Z

    move-result v0

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 136
    :sswitch_8
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 144
    :cond_6
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;->f(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)J

    move-result-wide v2

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

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
