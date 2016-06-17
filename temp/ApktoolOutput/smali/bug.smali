.class public final Lbug;
.super Ljava/lang/Object;
.source "WbAppInstallActivator.java"

# interfaces
.implements Lbvx;


# instance fields
.field private synthetic a:Lbue;


# direct methods
.method public constructor <init>(Lbue;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbug;->a:Lbue;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    invoke-static {}, Lbue;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestNotificationInfo WeiboException Msg : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v0, p0, Lbug;->a:Lbue;

    invoke-static {v0}, Lbue;->c(Lbue;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 124
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lbug;->a:Lbue;

    new-instance v1, Lbuh;

    invoke-direct {v1, p1}, Lbuh;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lbue;->a(Lbue;Lbuh;)V

    .line 129
    iget-object v0, p0, Lbug;->a:Lbue;

    invoke-static {v0}, Lbue;->c(Lbue;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 130
    return-void
.end method
