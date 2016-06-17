.class public final Lfou;
.super Landroid/os/Handler;
.source "ConnectionActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/connection/ui/ConnectionActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/connection/ui/ConnectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lfou;->a:Lcom/wandoujia/p4/connection/ui/ConnectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lfou;->a:Lcom/wandoujia/p4/connection/ui/ConnectionActivity;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a(Lcom/wandoujia/p4/connection/ui/ConnectionActivity;Landroid/os/Message;)V

    .line 41
    return-void
.end method
