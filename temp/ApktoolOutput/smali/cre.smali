.class public final Lcre;
.super Ljava/util/TimerTask;
.source "AutoReleaseWifiLock.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/base/utils/AutoReleaseWifiLock;


# direct methods
.method public constructor <init>(Lcom/wandoujia/base/utils/AutoReleaseWifiLock;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcre;->a:Lcom/wandoujia/base/utils/AutoReleaseWifiLock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcre;->a:Lcom/wandoujia/base/utils/AutoReleaseWifiLock;

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->release()V

    .line 94
    return-void
.end method
