.class public Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;
.super Lcom/wandoujia/account/fragment/AccountBaseFragment;
.source "AccountCheckVerificationFragment.java"


# static fields
.field private static D:Landroid/os/CountDownTimer;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/EditText;

.field private final E:Lcjh;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

.field private u:Lcom/wandoujia/account/dto/AccountVerification;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;-><init>()V

    .line 57
    new-instance v0, Lcjh;

    invoke-direct {v0, p0}, Lcjh;-><init>(Lcom/wandoujia/account/fragment/AccountBaseFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->E:Lcjh;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Z
    .locals 4
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->SMS:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->SMS:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_tel_input_hint:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verification_failure:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcjv;

    invoke-direct {v3}, Lcjv;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->s:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->PASSWORD:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-eq v0, v1, :cond_1

    .line 90
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_verification_send_waiting:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->b(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->e()V

    .line 92
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_email_resend_hint:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$color;->account_sdk_darker_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    sget-object v0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->D:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    new-instance v0, Lcjw;

    invoke-direct {v0, p0, p0}, Lcjw;-><init>(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;Landroid/support/v4/app/Fragment;)V

    sput-object v0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 93
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcnj;

    const-string v1, "send"

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    invoke-virtual {v3}, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->E:Lcjh;

    iget-object v5, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->f:Lcmm;

    invoke-direct/range {v0 .. v5}, Lcnj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 96
    :cond_1
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_tel_resend_hint:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcjh;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->E:Lcjh;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->D:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 200
    return-void
.end method

.method public static synthetic f(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->e()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 61
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a()V

    .line 62
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_verification_hint_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_verification_target_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->x:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_verification_target_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_verification_target:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_verification_code:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_verification_resend:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_verification_qq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->w:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_email_input_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->y:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_email_target_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->r:Ljava/lang/String;

    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->B:Landroid/widget/TextView;

    new-instance v1, Lcjt;

    invoke-direct {v1, p0}, Lcjt;-><init>(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->v:Landroid/widget/Button;

    new-instance v1, Lcju;

    invoke-direct {v1, p0}, Lcju;-><init>(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->SMS:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->w:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_tel_input_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->y:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_tel_target_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_code_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->r:Ljava/lang/String;

    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->PASSWORD:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->w:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_verification_password_input_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->C:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    return-void
.end method

.method protected final b(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->VERIFICATION_TOKEN_EXPIRED:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->PERMISSION_DENIED:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcjk;

    invoke-interface {v0}, Lcjk;->a()V

    goto :goto_0

    .line 283
    :cond_2
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_verification_failure:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getMsg()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcjx;

    invoke-direct {v3}, Lcjx;-><init>()V

    invoke-static {v0, v2, v1, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 266
    const-string v0, "confirm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcjk;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->u:Lcom/wandoujia/account/dto/AccountVerification;

    invoke-interface {v0, v1, v2}, Lcjk;->b(Ljava/lang/String;Lcom/wandoujia/account/dto/AccountVerification;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->setHasOptionsMenu(Z)V

    .line 69
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_verification:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->q:Ljava/lang/String;

    .line 73
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->s:Ljava/lang/String;

    .line 74
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountVerification;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->u:Lcom/wandoujia/account/dto/AccountVerification;

    .line 76
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->u:Lcom/wandoujia/account/dto/AccountVerification;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->u:Lcom/wandoujia/account/dto/AccountVerification;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerification;->getMethod()Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->t:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    .line 78
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->u:Lcom/wandoujia/account/dto/AccountVerification;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerification;->getArg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->r:Ljava/lang/String;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a()V

    .line 82
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->u:Lcom/wandoujia/account/dto/AccountVerification;

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->d()V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->onDestroyView()V

    .line 258
    sget-object v0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->D:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 260
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->D:Landroid/os/CountDownTimer;

    .line 262
    :cond_0
    return-void
.end method
