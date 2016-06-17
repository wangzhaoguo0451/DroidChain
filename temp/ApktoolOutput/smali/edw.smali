.class public final Ledw;
.super Ljava/lang/Object;
.source "VersionCompat.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Ledw;->a:I

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 25
    sget v0, Ledw;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
