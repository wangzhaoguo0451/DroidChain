.class public final Lcom/wandoujia/ripple_framework/event/DownloadDBEvent;
.super Ljava/lang/Object;
.source "DownloadDBEvent.java"


# instance fields
.field public a:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    .line 18
    iput-object p2, p0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent;->b:Ljava/util/List;

    .line 19
    return-void
.end method
