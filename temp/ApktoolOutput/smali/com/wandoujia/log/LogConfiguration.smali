.class public interface abstract Lcom/wandoujia/log/LogConfiguration;
.super Ljava/lang/Object;
.source "LogConfiguration.java"


# virtual methods
.method public abstract buildHeaderParams(Landroid/content/Context;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract buildStableCommonParams(Landroid/content/Context;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract buildVolatileCommonParams(Landroid/content/Context;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyVersion()Ljava/lang/String;
.end method

.method public abstract getLogVersion()Ljava/lang/String;
.end method

.method public abstract getMobileSendPolicy()Lcom/wandoujia/log/LogSender$SenderPolicyModel;
.end method

.method public abstract getProfileName()Ljava/lang/String;
.end method

.method public abstract getWifiSendPolicy()Lcom/wandoujia/log/LogSender$SenderPolicyModel;
.end method
