.class public interface abstract Lcom/wandoujia/rpc/http/cache/DataCache;
.super Ljava/lang/Object;
.source "DataCache.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract exists(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;)Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;
.end method

.method public abstract put(Ljava/lang/String;Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract size()J
.end method
