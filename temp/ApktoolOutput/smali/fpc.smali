.class public final Lfpc;
.super Ljava/lang/Object;
.source "ConnectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lfpc;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lfpc;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfop;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lfpc;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Lgqr;

    move-result-object v0

    invoke-virtual {v0}, Lgqr;->show()V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Lexm;

    iget-object v1, p0, Lfpc;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lexm;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lexm;->a()V

    goto :goto_0
.end method
