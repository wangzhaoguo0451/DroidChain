.class Lcom/wandoujia/clean/http/GarbageFetcher$FilePathParam;
.super Ljava/lang/Object;
.source "GarbageFetcher.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2e6dfaae4de1e515L


# instance fields
.field latestModification:J

.field rootPathMd5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/wandoujia/clean/http/GarbageFetcher$FilePathParam;->rootPathMd5:Ljava/lang/String;

    .line 261
    iput-wide p2, p0, Lcom/wandoujia/clean/http/GarbageFetcher$FilePathParam;->latestModification:J

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcse;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/clean/http/GarbageFetcher$FilePathParam;-><init>(Ljava/lang/String;J)V

    return-void
.end method
