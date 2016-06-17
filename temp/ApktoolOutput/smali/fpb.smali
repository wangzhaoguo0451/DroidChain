.class public final Lfpb;
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
    .line 136
    iput-object p1, p0, Lfpb;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lfpb;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    const-string v1, "phoenix.intent.extra.USER_AGENT"

    const-string v2, "phoenix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "phoenix.intent.extra.SOURCE"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lfop;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 148
    return-void
.end method
