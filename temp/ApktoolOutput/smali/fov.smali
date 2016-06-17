.class public final Lfov;
.super Ljava/lang/Thread;
.source "ConnectionActivity.java"


# instance fields
.field private synthetic a:Landroid/net/Uri;

.field private synthetic b:Lcom/wandoujia/p4/connection/ui/ConnectionActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/connection/ui/ConnectionActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lfov;->b:Lcom/wandoujia/p4/connection/ui/ConnectionActivity;

    iput-object p2, p0, Lfov;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 136
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lfov;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    iget-object v0, p0, Lfov;->b:Lcom/wandoujia/p4/connection/ui/ConnectionActivity;

    iget-object v1, p0, Lfov;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a(Lcom/wandoujia/p4/connection/ui/ConnectionActivity;Landroid/net/Uri;)V

    .line 141
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
