.class public interface abstract Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;
.super Ljava/lang/Object;
.source "IWebDownloadListenerInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
.end method

.method public abstract a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
.end method
