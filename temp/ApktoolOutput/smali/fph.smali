.class public final Lfph;
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
    .line 346
    iput-object p1, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->f(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->g(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0246

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->f(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 357
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->g(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->g(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e017a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Lgqr;

    move-result-object v0

    invoke-virtual {v0}, Lgqr;->dismiss()V

    .line 361
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    iget-object v1, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;Z)V

    .line 362
    invoke-static {}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c()V

    .line 363
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    invoke-static {v3}, Ld;->c(Z)V

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->f(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 365
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->g(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->g(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e056d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Lgqr;

    move-result-object v0

    invoke-virtual {v0}, Lgqr;->dismiss()V

    .line 369
    invoke-static {}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d()V

    .line 370
    iget-object v0, p0, Lfph;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;

    invoke-static {v4}, Ld;->c(Z)V

    goto/16 :goto_0
.end method
