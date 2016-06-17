.class public final Lgrh;
.super Ljava/lang/Object;
.source "WebDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/webdownload/WebDownloadService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/webdownload/WebDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lgrh;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lgrh;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->c(Lcom/wandoujia/p4/webdownload/WebDownloadService;)V

    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 185
    return-void
.end method
