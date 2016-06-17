.class public final Lcic;
.super Ljava/lang/Object;
.source "AccountErrorResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/wandoujia/account/AccountErrorResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/wandoujia/account/AccountErrorResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/account/AccountErrorResponse;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 59
    new-array v0, p1, [Lcom/wandoujia/account/AccountErrorResponse;

    return-object v0
.end method
