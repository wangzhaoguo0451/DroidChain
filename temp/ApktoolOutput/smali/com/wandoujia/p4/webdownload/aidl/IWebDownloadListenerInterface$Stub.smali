.class public abstract Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;
.super Landroid/os/Binder;
.source "IWebDownloadListenerInterface.java"

# interfaces
.implements Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.wandoujia.p4.webdownload.aidl.IWebDownloadListenerInterface"

    invoke-virtual {p0, p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;
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
    const-string v0, "com.wandoujia.p4.webdownload.aidl.IWebDownloadListenerInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lgrm;

    invoke-direct {v0, p0}, Lgrm;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.wandoujia.p4.webdownload.aidl.IWebDownloadListenerInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadListenerInterface"

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
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 57
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadListenerInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 73
    goto :goto_0

    .line 77
    :sswitch_3
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadListenerInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 86
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 91
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 93
    goto :goto_0

    .line 97
    :sswitch_4
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadListenerInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 105
    :cond_3
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;->b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 107
    goto/16 :goto_0

    .line 111
    :sswitch_5
    const-string v2, "com.wandoujia.p4.webdownload.aidl.IWebDownloadListenerInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    sget-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 120
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {p0, v0, v2, v3}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface$Stub;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 125
    goto/16 :goto_0

    .line 38
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
