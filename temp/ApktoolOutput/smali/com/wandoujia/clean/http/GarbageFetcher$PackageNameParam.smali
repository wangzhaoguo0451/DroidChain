.class public Lcom/wandoujia/clean/http/GarbageFetcher$PackageNameParam;
.super Ljava/lang/Object;
.source "GarbageFetcher.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xb54e06d742c5769L


# instance fields
.field latestModification:J

.field pkgNameMd5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/wandoujia/clean/http/GarbageFetcher$PackageNameParam;->pkgNameMd5:Ljava/lang/String;

    .line 248
    iput-wide p2, p0, Lcom/wandoujia/clean/http/GarbageFetcher$PackageNameParam;->latestModification:J

    .line 249
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLcse;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/clean/http/GarbageFetcher$PackageNameParam;-><init>(Ljava/lang/String;J)V

    return-void
.end method
