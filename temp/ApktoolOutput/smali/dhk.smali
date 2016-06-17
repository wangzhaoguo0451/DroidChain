.class public final Ldhk;
.super Ljava/lang/Object;
.source "AppUpgradeFragment.java"

# interfaces
.implements Lhmx;


# instance fields
.field final synthetic a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Ldhk;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 180
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-static {v0}, Lj;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 182
    :goto_0
    const v3, 0x7f0e05d8

    .line 183
    const v1, 0x7f0e027d

    .line 184
    const v0, 0x7f0c0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 186
    if-eqz v2, :cond_1

    .line 187
    const v3, 0x7f0e0399

    .line 188
    const v1, 0x7f0e05b3

    move v4, v3

    move v3, v1

    .line 190
    :goto_1
    const v1, 0x7f0c0078

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 192
    const v1, 0x7f0c0025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f020219

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    invoke-virtual {v0, v3}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setText(I)V

    .line 197
    iget-object v1, p0, Ldhk;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->b(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)Lexf;

    move-result-object v1

    invoke-static {v1}, Lewx;->b(Lexf;)Z

    .line 198
    iget-object v1, p0, Ldhk;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    new-instance v3, Ldhl;

    invoke-direct {v3, p0, v0}, Ldhl;-><init>(Ldhk;Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    invoke-static {v1, v3}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->a(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;Lexf;)Lexf;

    .line 209
    iget-object v1, p0, Ldhk;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->b(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)Lexf;

    move-result-object v1

    invoke-static {v1}, Lewx;->a(Lexf;)V

    .line 211
    new-instance v1, Ldhn;

    invoke-direct {v1, v2, v0}, Ldhn;-><init>(ZLcom/wandoujia/ripple_framework/view/StatefulButton;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_1
    move v4, v3

    move v3, v1

    goto :goto_1
.end method
