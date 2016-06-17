.class public Lcom/wandoujia/p4/account/activity/AccountChangeActivity;
.super Lcom/wandoujia/p4/account/activity/AccountBaseActivity;
.source "AccountChangeActivity.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;-><init>()V

    .line 144
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountChangeActivity;)V
    .locals 5
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->i:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/wandoujia/base/utils/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->c:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "email"

    const v1, 0x7f0e0028

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v1, Lcmv;

    iget-object v2, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->b:Lesh;

    invoke-static {}, Letz;->a()Letz;

    move-result-object v4

    iget-object v4, v4, Letz;->a:Lcmm;

    invoke-direct {v1, v0, v2, v3, v4}, Lcmv;-><init>(Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->c:Ljava/lang/String;

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "telephone"

    const v1, 0x7f0e0030

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountChangeActivity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcmw;

    const-string v1, ""

    iget-object v2, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->b:Lesh;

    invoke-static {}, Letz;->a()Letz;

    move-result-object v3

    iget-object v3, v3, Letz;->a:Lcmm;

    invoke-direct {v0, p1, v1, v2, v3}, Lcmw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 59
    const-string v0, "email"

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Lchv;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->j:Ljava/lang/String;

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    :goto_1
    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->d:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0c00d7

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->f:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0c00d6

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->e:Landroid/widget/LinearLayout;

    .line 78
    const v0, 0x7f0c00d8

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->g:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->i:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0c00d5

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->h:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->c:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    invoke-static {}, Lchv;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0e0027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->i:Landroid/widget/EditText;

    const v1, 0x7f0e003b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->i:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 107
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->d:Landroid/widget/Button;

    new-instance v1, Lesp;

    invoke-direct {v1, p0}, Lesp;-><init>(Lcom/wandoujia/p4/account/activity/AccountChangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void

    .line 63
    :cond_1
    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 67
    :cond_2
    invoke-static {}, Lchv;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->j:Ljava/lang/String;

    .line 72
    :goto_4
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 70
    :cond_3
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->j:Ljava/lang/String;

    goto :goto_4

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->c:Ljava/lang/String;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lchv;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0e002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :goto_5
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->i:Landroid/widget/EditText;

    const v1, 0x7f0e003c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 105
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->i:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_3

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5
.end method

.method private d()Z
    .locals 7

    .prologue
    const v6, 0x7f0e002e

    const v5, 0x7f0e0026

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 116
    iget-object v2, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->c:Ljava/lang/String;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    sget-object v3, Lesu;->a:[I

    invoke-static {v2}, Ld;->t(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 120
    :pswitch_0
    const v1, 0x7f0e0036

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lesq;

    invoke-direct {v3}, Lesq;-><init>()V

    invoke-static {p0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v1

    invoke-virtual {v1}, Lcoh;->show()V

    goto :goto_0

    .line 132
    :pswitch_1
    const v1, 0x7f0e0037

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lesr;

    invoke-direct {v3}, Lesr;-><init>()V

    invoke-static {p0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v1

    invoke-virtual {v1}, Lcoh;->show()V

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->c:Ljava/lang/String;

    const-string v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    sget-object v3, Lesu;->a:[I

    invoke-static {v2}, Ld;->u(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 171
    goto :goto_0

    .line 149
    :pswitch_4
    const v1, 0x7f0e0591

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Less;

    invoke-direct {v3}, Less;-><init>()V

    invoke-static {p0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v1

    invoke-virtual {v1}, Lcoh;->show()V

    goto :goto_0

    .line 160
    :pswitch_5
    const v1, 0x7f0e0592

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lest;

    invoke-direct {v3}, Lest;-><init>()V

    invoke-static {p0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v1

    invoke-virtual {v1}, Lcoh;->show()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 147
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->finish()V

    .line 203
    return-void
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    invoke-static {}, Letz;->a()Letz;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v2

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getVerificationGroups()[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/account/dto/AccountError;->NEED_VERIFY_ACCOUNT:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v4}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v4

    if-ne v2, v4, :cond_2

    if-eqz v3, :cond_2

    array-length v2, v3

    if-lez v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    if-eqz v0, :cond_4

    .line 208
    invoke-direct {p0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->b()V

    .line 209
    invoke-direct {p0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    iget-object v2, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_GROUPS"

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getVerificationGroups()[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 216
    new-instance v1, Lcme;

    invoke-direct {v1, p0}, Lcme;-><init>(Lcom/wandoujia/p4/account/activity/AccountChangeActivity;)V

    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_0

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    sput-object v1, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a:Lcme;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v1

    .line 207
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 237
    :cond_4
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_NEED_RESET:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getArgs()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string v1, "phoenix.intent.extra.ACCOUNT_PASSCODE"

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getArgs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 243
    :cond_5
    const v0, 0x7f0e0029

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 250
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->finish()V

    .line 253
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoenix.intent.extra_ACCOUNT_BIND_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->c:Ljava/lang/String;

    .line 53
    :cond_0
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->b()V

    .line 56
    return-void
.end method
