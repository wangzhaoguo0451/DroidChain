.class public Lcom/wandoujia/base/utils/Phoenix2Util;
.super Ljava/lang/Object;
.source "Phoenix2Util.java"


# static fields
.field private static final PHOENIX2_PREFIX:Ljava/lang/String; = "com.wandoujia.phoenix2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPhoenix2(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 12
    if-eqz p0, :cond_0

    const-string v0, "com.wandoujia.phoenix2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoenix2Process(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    if-eqz p0, :cond_0

    const-string v0, "com.wandoujia.phoenix2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolvePhoenix2PackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-string v0, "com.wandoujia.phoenix2"

    return-object v0
.end method
