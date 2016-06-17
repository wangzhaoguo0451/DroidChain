.class public final Lcid;
.super Ljava/lang/Object;
.source "AccountParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/wandoujia/account/AccountParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 285
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/account/AccountParams;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 285
    new-array v0, p1, [Lcom/wandoujia/account/AccountParams;

    return-object v0
.end method
