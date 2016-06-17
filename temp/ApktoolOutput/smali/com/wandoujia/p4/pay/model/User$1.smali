.class final Lcom/wandoujia/p4/pay/model/User$1;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/wandoujia/p4/pay/model/User;
    .locals 1
    .parameter

    .prologue
    .line 115
    new-instance v0, Lcom/wandoujia/p4/pay/model/User;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/pay/model/User;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/model/User$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wandoujia/p4/pay/model/User;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/wandoujia/p4/pay/model/User;
    .locals 1
    .parameter

    .prologue
    .line 119
    new-array v0, p1, [Lcom/wandoujia/p4/pay/model/User;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/model/User$1;->newArray(I)[Lcom/wandoujia/p4/pay/model/User;

    move-result-object v0

    return-object v0
.end method
