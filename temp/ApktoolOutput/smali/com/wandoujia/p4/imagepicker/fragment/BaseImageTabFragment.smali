.class public abstract Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "BaseImageTabFragment.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Lfya;

.field protected c:I

.field protected final d:Lfyc;

.field private e:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

.field private f:Landroid/widget/GridView;

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    .line 48
    new-instance v0, Lfyc;

    invoke-direct {v0, p0}, Lfyc;-><init>(Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->d:Lfyc;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private static a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->NO_IMAGES:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->f:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->f:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->b:Lfya;

    invoke-virtual {v0}, Lfya;->l()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "path_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    packed-switch p1, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 125
    :pswitch_0
    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-static {v0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->a(Landroid/view/View;)V

    .line 129
    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->NO_IMAGES:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-static {v0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->a(Landroid/view/View;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b()Lfya;
.end method

.method public abstract c()V
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0301d2

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->b(I)V

    .line 73
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->b:Lfya;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lfya;->b(I)V

    .line 74
    return-void
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_count"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->c:I

    .line 94
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->b()Lfya;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->b:Lfya;

    .line 95
    const v0, 0x7f0c0434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->f:Landroid/widget/GridView;

    .line 96
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->f:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->b:Lfya;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    const v0, 0x7f0c0435

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->a:Landroid/view/View;

    .line 99
    const v0, 0x7f0c0436

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->g:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->g:Landroid/widget/Button;

    new-instance v1, Lfyh;

    invoke-direct {v1, p0}, Lfyh;-><init>(Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0c00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->e:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    .line 109
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->e:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    invoke-virtual {v0, v3}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->setVisibility(I)V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 116
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->b(I)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->a(I)V

    .line 118
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->e:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPrepareLoading()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method
