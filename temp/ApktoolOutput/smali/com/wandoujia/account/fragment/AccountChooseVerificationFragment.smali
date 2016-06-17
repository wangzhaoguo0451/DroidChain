.class public Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;
.super Lcom/wandoujia/account/fragment/AccountBaseFragment;
.source "AccountChooseVerificationFragment.java"


# instance fields
.field private q:Ljava/lang/String;

.field private r:Lcom/wandoujia/account/dto/AccountVerificationGroup;

.field private s:Landroid/widget/RadioGroup;

.field private t:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;-><init>()V

    .line 71
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->s:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerificationGroup;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->r:Lcom/wandoujia/account/dto/AccountVerificationGroup;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 12

    .prologue
    const/16 v11, 0x22

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a()V

    .line 34
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->a:Landroid/view/View;

    sget v2, Lcom/wandoujia/account/R$id;->account_verification_methods_radiogroup:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->s:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->a:Landroid/view/View;

    sget v2, Lcom/wandoujia/account/R$id;->account_verification_next:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->r:Lcom/wandoujia/account/dto/AccountVerificationGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->r:Lcom/wandoujia/account/dto/AccountVerificationGroup;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->r:Lcom/wandoujia/account/dto/AccountVerificationGroup;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->getVerifications()[Lcom/wandoujia/account/dto/AccountVerification;

    move-result-object v4

    move v0, v1

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    aget-object v5, v4, v0

    const/4 v3, 0x0

    const-string v2, ""

    sget-object v6, Lcjz;->a:[I

    invoke-virtual {v5}, Lcom/wandoujia/account/dto/AccountVerification;->getMethod()Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_1
    if-eqz v3, :cond_2

    new-instance v6, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/wandoujia/account/R$dimen;->account_sdk_xsmall_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v6, Landroid/widget/RadioGroup$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/wandoujia/account/R$dimen;->account_sdk_textview_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v6, Landroid/widget/RadioGroup$LayoutParams;->height:I

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v3}, Landroid/widget/RadioButton;->setSingleLine()V

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/wandoujia/account/R$color;->account_sdk_darker_grey:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v1, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5}, Lcom/wandoujia/account/dto/AccountVerification;->getArg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/wandoujia/account/R$color;->account_sdk_normal_text_color_black:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v5, v2, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-nez v0, :cond_1

    invoke-virtual {v3, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v3, v10}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->s:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :pswitch_0
    new-instance v3, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verification_email_send_hint:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_1
    new-instance v3, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verification_tel_send_hint:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->t:Landroid/widget/Button;

    new-instance v1, Lcjy;

    invoke-direct {v1, p0}, Lcjy;-><init>(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    return-void
.end method

.method protected final b(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->setHasOptionsMenu(Z)V

    .line 41
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_choose_verification:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->a:Landroid/view/View;

    .line 42
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->q:Ljava/lang/String;

    .line 45
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_GROUP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountVerificationGroup;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->r:Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->a()V

    .line 48
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->a:Landroid/view/View;

    return-object v0
.end method
