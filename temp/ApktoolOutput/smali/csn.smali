.class public final Lcsn;
.super Ljava/lang/Object;
.source "IConnectionServiceCallback.java"

# interfaces
.implements Lcom/wandoujia/connection/IConnectionServiceCallback;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcsn;->a:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public final a(ZZZZLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 85
    :try_start_0
    const-string v2, "com.wandoujia.connection.IConnectionServiceCallback"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    if-eqz p3, :cond_2

    move v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    if-eqz p4, :cond_3

    :goto_3
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcsn;->a:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 92
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 96
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 97
    return-void

    :cond_0
    move v2, v1

    .line 86
    goto :goto_0

    :cond_1
    move v2, v1

    .line 87
    goto :goto_1

    :cond_2
    move v2, v1

    .line 88
    goto :goto_2

    :cond_3
    move v0, v1

    .line 89
    goto :goto_3

    .line 95
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 96
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcsn;->a:Landroid/os/IBinder;

    return-object v0
.end method
