.class public Lcom/wandoujia/p4/account/view/AccountBasicInfoView;
.super Landroid/widget/LinearLayout;
.source "AccountBasicInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a:Landroid/widget/TextView;

    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Ld;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_1
    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Lhma;

    invoke-direct {v1}, Lhma;-><init>()V

    .line 98
    iget-object v2, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f020248

    invoke-virtual {v1, v2, v0, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/wandoujia/p4/account/view/AccountBasicInfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lchv;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/wandoujia/p4/account/view/AccountBasicInfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->b()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->d:Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;-><init>(Lcom/wandoujia/p4/account/view/AccountBasicInfoView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->d:Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    const-string v1, "pheonix.intent.action.LOGIN_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "pheonix.intent.action.REGISTER_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "pheonix.intent.action.LOGOUT_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "account.intent.action.MODIFY_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->d:Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    :cond_0
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->b()V

    .line 80
    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 81
    return-void

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "mythings"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 177
    invoke-static {}, Lchv;->w()Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 182
    :goto_0
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 184
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;)V

    .line 190
    :cond_0
    return-void

    .line 180
    :cond_1
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->d:Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->d:Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->d:Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;

    .line 135
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 136
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f0c00ce

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0c00cf

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->b:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0c00cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    invoke-virtual {p0, p0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    return-void
.end method
