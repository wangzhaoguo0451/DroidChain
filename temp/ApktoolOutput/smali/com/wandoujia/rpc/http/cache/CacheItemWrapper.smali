.class public Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;
.super Ljava/lang/Object;
.source "CacheItemWrapper.java"


# instance fields
.field private content:Ljava/lang/String;

.field private lastModificationTime:J

.field private timeout:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static from(Ljava/lang/String;JJ)Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;

    invoke-direct {v0}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;-><init>()V

    .line 30
    iput-object p0, v0, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->content:Ljava/lang/String;

    .line 31
    iput-wide p1, v0, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->timeout:J

    .line 32
    iput-wide p3, v0, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->lastModificationTime:J

    .line 33
    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModificationTime()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->lastModificationTime:J

    return-wide v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->timeout:J

    return-wide v0
.end method
