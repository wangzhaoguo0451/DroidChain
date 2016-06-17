.class public Lcom/wandoujia/p4/account/activity/AccountBindActivity;
.super Lcom/wandoujia/p4/account/activity/AccountBaseActivity;
.source "AccountBindActivity.java"


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcoh;

.field private final n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->j:Z

    .line 37
    iput-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->k:Z

    .line 186
    new-instance v0, Lesj;

    invoke-direct {v0, p0}, Lesj;-><init>(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Lcoh;)Lcoh;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->m:Lcoh;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Z
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0e0036

    const/16 v6, 0x32

    const/4 v2, 0x1

    const v5, 0x7f0e0037

    const/4 v1, 0x0

    .line 28
    invoke-static {}, Ld;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lchv;->o()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->USERNAME_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    :goto_0
    sget-object v3, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Ld;->u(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v0

    :cond_0
    :goto_1
    sget-object v3, Leso;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    move v0, v2

    :goto_3
    return v0

    :cond_1
    invoke-static {v0}, Ld;->s(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->USERNAME_INVALID:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_3

    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->USERNAME_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x8

    if-ge v0, v4, :cond_5

    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_TOO_SHORT:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_6

    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    :cond_6
    invoke-static {v3}, Ld;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_INVALID:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Ld;->t(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_3

    :pswitch_2
    iget-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->j:Z

    if-eqz v0, :cond_9

    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    :goto_4
    move v0, v1

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v7}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_3
    iget-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->j:Z

    if-eqz v0, :cond_a

    const v0, 0x7f0e0592

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    :goto_5
    move v0, v1

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v5}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_4
    const v0, 0x7f0e05e7

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :pswitch_5
    const v0, 0x7f0e04ca

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :pswitch_6
    const v0, 0x7f0e04cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :pswitch_7
    const v0, 0x7f0e04cc

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :pswitch_8
    move v0, v2

    goto/16 :goto_3

    :cond_b
    iget-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->j:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    sget-object v0, Leso;->a:[I

    iget-object v3, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    invoke-static {v3}, Ld;->u(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :sswitch_1
    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    sget-object v0, Leso;->a:[I

    iget-object v3, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    invoke-static {v3}, Ld;->t(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {p0, v5}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :sswitch_3
    invoke-virtual {p0, v7}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->k:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lesi;

    invoke-direct {v1}, Lesi;-><init>()V

    invoke-static {p0, p1, v0, v1}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 184
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Lcoh;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->m:Lcoh;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g:Ljava/lang/String;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->k:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->k:Z

    .line 212
    invoke-static {v2}, Lchv;->c(Z)V

    .line 213
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lchv;->h(Ljava/lang/String;)V

    .line 214
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->finish()V

    .line 275
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g:Ljava/lang/String;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iput-boolean v2, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->k:Z

    .line 219
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->n(Ljava/lang/String;)V

    .line 223
    :goto_1
    new-instance v0, Lesk;

    invoke-direct {v0, p0}, Lesk;-><init>(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->o(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 279
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 280
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoenix.intent.extra_ACCOUNT_BIND_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoenix.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->l:Ljava/lang/String;

    .line 48
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->setContentView(I)V

    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    :goto_0
    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0c00d2

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0c00d3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoenix.intent.extra.HINT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    const v2, 0x7f0e0035

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->d:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->j:Z

    :cond_2
    :goto_1
    invoke-static {}, Ld;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lchv;->o()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void

    .line 53
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->l:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 56
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g:Ljava/lang/String;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->l:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g:Ljava/lang/String;

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    const v2, 0x7f0e00c2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->d:Landroid/widget/TextView;

    if-nez v0, :cond_7

    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->j:Z

    goto :goto_1
.end method
