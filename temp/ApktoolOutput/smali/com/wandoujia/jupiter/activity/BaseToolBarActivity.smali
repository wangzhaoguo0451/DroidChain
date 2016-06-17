.class public Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "BaseToolBarActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 38
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->findViewById(I)Landroid/view/View;

    .line 40
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    .line 41
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->findViewById(I)Landroid/view/View;

    .line 42
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->b:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 50
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#24aa42"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 51
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 52
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Ldcf;

    invoke-direct {v1, p0}, Ldcf;-><init>(Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->c()V

    .line 35
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    return-void
.end method
