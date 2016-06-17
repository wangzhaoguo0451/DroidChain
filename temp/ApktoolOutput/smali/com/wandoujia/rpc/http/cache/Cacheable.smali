.class public interface abstract Lcom/wandoujia/rpc/http/cache/Cacheable;
.super Ljava/lang/Object;
.source "Cacheable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getTimeoutInterval()J
.end method

.method public abstract getTypeToken()Lczv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lczv",
            "<TT;>;"
        }
    .end annotation
.end method
