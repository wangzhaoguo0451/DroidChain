.class public final Lcom/wandoujia/ripple_framework/event/DownloadEvent;
.super Ljava/lang/Object;
.source "DownloadEvent.java"


# instance fields
.field public a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

.field public b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    .line 17
    iput-object p2, p0, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 18
    return-void
.end method
