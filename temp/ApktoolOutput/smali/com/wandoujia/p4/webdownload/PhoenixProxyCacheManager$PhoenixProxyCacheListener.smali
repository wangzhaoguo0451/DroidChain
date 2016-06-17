.class public interface abstract Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;
.super Ljava/lang/Object;
.source "PhoenixProxyCacheManager.java"


# virtual methods
.method public abstract blockRequestInMobileNetwork()Z
.end method

.method public abstract cacheResponse()Z
.end method

.method public abstract getPageDynamicStrategy(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;
.end method

.method public abstract getUrlsPageUrl(Ljava/lang/String;Liaw;)Ljava/lang/String;
.end method

.method public abstract onProxyCacheError(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
.end method

.method public abstract useCacheInProxy()Z
.end method
