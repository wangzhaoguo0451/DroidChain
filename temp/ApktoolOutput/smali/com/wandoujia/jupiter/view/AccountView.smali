.class public Lcom/wandoujia/jupiter/view/AccountView;
.super Landroid/widget/LinearLayout;
.source "AccountView.java"


# instance fields
.field private final a:Lhhl;

.field private b:Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ldws;

    invoke-direct {v0, p0}, Ldws;-><init>(Lcom/wandoujia/jupiter/view/AccountView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->a:Lhhl;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ldws;

    invoke-direct {v0, p0}, Ldws;-><init>(Lcom/wandoujia/jupiter/view/AccountView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->a:Lhhl;

    .line 87
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/view/AccountView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/view/AccountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->d:Landroid/widget/TextView;

    const v1, 0x7f0e03c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x4150

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Lhma;

    invoke-direct {v1}, Lhma;-><init>()V

    .line 142
    iget-object v2, p0, Lcom/wandoujia/jupiter/view/AccountView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f020132

    invoke-virtual {v1, v2, v0, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/view/AccountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->d:Landroid/widget/TextView;

    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate;

    invoke-direct {p0}, Lcom/wandoujia/jupiter/view/AccountView;->getBalanceUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ldwt;

    invoke-direct {v2, p0}, Ldwt;-><init>(Lcom/wandoujia/jupiter/view/AccountView;)V

    invoke-virtual {v0, v1, v2}, Lfvu;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;

    .line 149
    return-void
.end method

.method static synthetic b(Lcom/wandoujia/jupiter/view/AccountView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/wandoujia/jupiter/view/AccountView;->b()V

    return-void
.end method

.method static synthetic c(Lcom/wandoujia/jupiter/view/AccountView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/wandoujia/jupiter/view/AccountView;->a()V

    return-void
.end method

.method private getBalanceUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://innerpay.wandoujia.com/pay/account/query?wdj_auth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->b:Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;

    invoke-direct {v0, p0}, Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;-><init>(Lcom/wandoujia/jupiter/view/AccountView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->b:Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    const-string v1, "pheonix.intent.action.LOGIN_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "pheonix.intent.action.REGISTER_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "pheonix.intent.action.LOGOUT_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "account.intent.action.MODIFY_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/view/AccountView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/jupiter/view/AccountView;->b:Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->b:Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/view/AccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/view/AccountView;->b:Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->b:Lcom/wandoujia/jupiter/view/AccountView$AccountChangeReceiver;

    .line 128
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 129
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 92
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/AccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 93
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/AccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->d:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/AccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->e:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/view/AccountView;->a:Lhhl;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/view/AccountView;->a:Lhhl;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AccountView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/view/AccountView;->a:Lhhl;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/wandoujia/jupiter/view/AccountView;->b()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/jupiter/view/AccountView;->a()V

    goto :goto_0
.end method
