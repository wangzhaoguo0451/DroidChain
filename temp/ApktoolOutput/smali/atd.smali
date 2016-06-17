.class final Latd;
.super Lauf;
.source "HttpUrlConnectionNetworkFetcher.java"


# instance fields
.field private synthetic a:Ljava/util/concurrent/Future;

.field private synthetic b:Lauc;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lauc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Latd;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Latd;->b:Lauc;

    invoke-direct {p0}, Lauf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Latd;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Latd;->b:Lauc;

    invoke-virtual {v0}, Lauc;->a()V

    .line 89
    :cond_0
    return-void
.end method
