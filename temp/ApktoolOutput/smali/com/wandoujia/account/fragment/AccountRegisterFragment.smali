.class public Lcom/wandoujia/account/fragment/AccountRegisterFragment;
.super Lcom/wandoujia/account/fragment/AccountBaseFragment;
.source "AccountRegisterFragment.java"


# static fields
.field private static D:Z


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Ljava/lang/Boolean;

.field private C:Lcie;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private final I:Lcmb;

.field private final J:Landroid/text/TextWatcher;

.field private q:Lcom/wandoujia/account/widget/AccountEditText;

.field private r:Lcom/wandoujia/account/widget/AccountEditText;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageButton;

.field private w:Z

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/CheckBox;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->D:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->B:Ljava/lang/Boolean;

    .line 81
    new-instance v0, Lcmb;

    invoke-direct {v0, p0}, Lcmb;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->I:Lcmb;

    .line 96
    new-instance v0, Lclh;

    invoke-direct {v0, p0}, Lclh;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->J:Landroid/text/TextWatcher;

    .line 476
    return-void
.end method

.method public static final a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountRegisterFragment;
    .locals 1
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;-><init>()V

    .line 85
    invoke-virtual {v0, p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->v:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static final b(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountRegisterFragment;
    .locals 2
    .parameter

    .prologue
    .line 90
    new-instance v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;-><init>()V

    .line 91
    invoke-virtual {v0, p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->D:Z

    .line 93
    return-object v0
.end method

.method private c(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 7
    .parameter

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 541
    if-nez v0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 546
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    .line 550
    :goto_1
    if-eqz p1, :cond_7

    .line 551
    :try_start_0
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USER_ALREADY_EXIST:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 552
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->B:Ljava/lang/Boolean;

    .line 553
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f:Lcmm;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v2}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v4, v4, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    const-string v5, "REGISTER_TAG"

    iget-object v6, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->I:Lcmb;

    invoke-virtual/range {v0 .. v6}, Lcmm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    .line 557
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_netop_submitting_login:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    .line 562
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    goto :goto_0

    .line 563
    :cond_3
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USERNAME_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 565
    new-instance v0, Lcok;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcok;-><init>(Landroid/content/Context;)V

    .line 567
    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_username_exist:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v4}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcok;->b(Ljava/lang/CharSequence;)Lcok;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_register_failure:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcok;->a(Ljava/lang/CharSequence;)Lcok;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_cancel:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcln;

    invoke-direct {v3, p0}, Lcln;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v1, v2, v3}, Lcok;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcok;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_login:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lclm;

    invoke-direct {v3, p0}, Lclm;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v1, v2, v3}, Lcok;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcok;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcok;->a(Z)Lcok;

    .line 612
    invoke-virtual {v0}, Lcok;->a()Lcoh;

    move-result-object v1

    iget-object v2, v0, Lcok;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcok;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcoh;->show()V

    goto/16 :goto_0

    .line 614
    :cond_4
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->NEED_SECCODE:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 616
    new-instance v0, Lclo;

    invoke-direct {v0, p0}, Lclo;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    new-instance v2, Lclp;

    invoke-direct {v2}, Lclp;-><init>()V

    invoke-static {v1, v0, v2}, Ld;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto/16 :goto_0

    .line 662
    :cond_5
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 664
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_netop_server_error:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_6
    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_register_failure:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lclq;

    invoke-direct {v3, p0, p1}, Lclq;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;Lcom/wandoujia/account/dto/WandouResponse;)V

    invoke-static {v1, v0, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto/16 :goto_0

    .line 684
    :cond_7
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_netop_network_error:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_register_failure:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lclr;

    invoke-direct {v3}, Lclr;-><init>()V

    invoke-static {v1, v0, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public static synthetic c(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->C:Lcie;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    invoke-virtual {v0, v1, v2}, Lcie;->a(Ljava/lang/String;Z)Lcie;

    iget-boolean v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->TELEPHONE:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setContentType(Lcom/wandoujia/account/widget/AccountEditText$ContentType;)V

    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->REGISTER:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setStatusType(Lcom/wandoujia/account/widget/AccountEditText$StatusType;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->PASSWORD:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setContentType(Lcom/wandoujia/account/widget/AccountEditText$ContentType;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->REGISTER:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setStatusType(Lcom/wandoujia/account/widget/AccountEditText$StatusType;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i:Lcjr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i:Lcjr;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->s:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcjr;->onViewWidgetClicked(Landroid/view/View;)V

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-boolean v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    if-eqz v0, :cond_6

    const-string v0, "account_button_click_type"

    const-string v2, "one_key_register"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v0, "unknown"

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    :cond_3
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->d()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->EMAIL:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setContentType(Lcom/wandoujia/account/widget/AccountEditText$ContentType;)V

    goto :goto_0

    :cond_6
    const-string v0, "account_button_click_type"

    const-string v2, "email"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->d()V

    goto :goto_2
.end method

.method private d()V
    .locals 6

    .prologue
    .line 766
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f:Lcmm;

    if-nez v0, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 772
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_netop_submitting_register:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    .line 774
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 776
    iget-boolean v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    if-nez v0, :cond_3

    .line 777
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f:Lcmm;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v2}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v3, v3, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    const-string v4, "REGISTER_TAG"

    iget-object v5, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->I:Lcmb;

    invoke-virtual/range {v0 .. v5}, Lcmm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    .line 787
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->l:Lcjq;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->l:Lcjq;

    invoke-interface {v0}, Lcjq;->b()V

    goto :goto_0

    .line 782
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f:Lcmm;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, v2, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    const-string v3, ""

    const-string v4, "REGISTER_TAG"

    iget-object v5, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->I:Lcmb;

    invoke-virtual/range {v0 .. v5}, Lcmm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    goto :goto_1
.end method

.method public static synthetic d(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b()Ls;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b()Ls;

    move-result-object v0

    const-string v2, "login"

    invoke-virtual {v0, v2}, Ls;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b()Ls;

    move-result-object v2

    invoke-virtual {v2}, Ls;->e()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b()Ls;

    move-result-object v2

    invoke-virtual {v2}, Ls;->d()Z

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountLoginFragment;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v2}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v2}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v3, v2}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Lag;->a(Landroid/support/v4/app/Fragment;)Lag;

    :cond_3
    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "login"

    invoke-virtual {v1, v2, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    invoke-virtual {v1}, Lag;->a()I

    :cond_4
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 830
    iget-boolean v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    .line 831
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 832
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 834
    iget-boolean v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    if-nez v2, :cond_3

    .line 835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 836
    const-string v2, "account_view_type"

    const-string v3, "email"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 841
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 842
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 843
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->u:Landroid/widget/TextView;

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_register_tel:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 847
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_email_big:I

    invoke-virtual {v2, v3}, Lcom/wandoujia/account/widget/AccountEditText;->setHint(I)V

    .line 849
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v5, :cond_0

    .line 850
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v2, v6}, Lcom/wandoujia/account/widget/AccountEditText;->setRawInputType(I)V

    .line 852
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v2, v6}, Lcom/wandoujia/account/widget/AccountEditText;->setInputType(I)V

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_register_email:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->s:Landroid/widget/TextView;

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_register:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 858
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v2, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setVisibility(I)V

    .line 876
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1, v0}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 878
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->requestFocus()Z

    .line 881
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 830
    goto/16 :goto_0

    .line 860
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 861
    const-string v2, "account_view_type"

    const-string v3, "telView"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 865
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->u:Landroid/widget/TextView;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_register_email:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 866
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_tel_register_hint:I

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/widget/AccountEditText;->setHint(I)V

    .line 867
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v5, :cond_4

    .line 868
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/widget/AccountEditText;->setRawInputType(I)V

    .line 870
    :cond_4
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->requestFocus()Z

    .line 871
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1, v4}, Lcom/wandoujia/account/widget/AccountEditText;->setVisibility(I)V

    .line 872
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->s:Landroid/widget/TextView;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_one_key_register:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 873
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_register_tel:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static synthetic e(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e()V

    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    .line 703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    sget-object v0, Lcom/wandoujia/account/dto/RegisterSource;->TELEPHONE:Lcom/wandoujia/account/dto/RegisterSource;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/RegisterSource;->name()Ljava/lang/String;

    move-result-object v0

    .line 705
    iget-boolean v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    if-nez v1, :cond_0

    .line 706
    sget-object v0, Lcom/wandoujia/account/dto/RegisterSource;->EMAIL:Lcom/wandoujia/account/dto/RegisterSource;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/RegisterSource;->name()Ljava/lang/String;

    move-result-object v0

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, v2, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "account_register_type"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account_register_user_input"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account_register_src"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account_register_failed_reason"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_register_failure:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lclt;

    invoke-direct {v2}, Lclt;-><init>()V

    invoke-static {v0, p1, v1, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 711
    const/4 v0, 0x0

    .line 713
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic f(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcie;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->C:Lcie;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->B:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    return v0
.end method

.method public static synthetic j(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcmb;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->I:Lcmb;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 119
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a()V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_register:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->s:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_username:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/widget/AccountEditText;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    .line 122
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->v:Landroid/widget/ImageButton;

    .line 123
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/widget/AccountEditText;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    .line 124
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_username_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->z:Landroid/widget/LinearLayout;

    .line 126
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_login:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->t:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_register_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->u:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_username_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->x:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_contact_checkBox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->y:Landroid/widget/CheckBox;

    .line 130
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_sina_login_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->E:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_qq_login_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->F:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_wechat_login_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->G:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->third_login_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->H:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_legal_hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->A:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_register_agree:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_title_terms:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 142
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/wandoujia/account/R$style;->account_sdk_term_style:I

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 145
    if-eq v0, v7, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/wandoujia/account/R$string;->account_sdk_title_terms:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->i:Z

    if-nez v0, :cond_e

    .line 154
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->j:Z

    if-nez v0, :cond_f

    .line 159
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->k:Z

    if-nez v0, :cond_10

    .line 164
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->G:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$dimen;->account_sdk_large_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 168
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->F:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->j:Z

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->H:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->l:Z

    if-nez v0, :cond_11

    .line 182
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->t:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    :goto_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->m:Z

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 190
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->E:Landroid/view/View;

    new-instance v1, Lcls;

    invoke-direct {v1, p0}, Lcls;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->F:Landroid/view/View;

    new-instance v1, Lclu;

    invoke-direct {v1, p0}, Lclu;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->G:Landroid/view/View;

    new-instance v1, Lclv;

    invoke-direct {v1, p0}, Lclv;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->s:Landroid/widget/TextView;

    new-instance v1, Lclw;

    invoke-direct {v1, p0}, Lclw;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->t:Landroid/widget/TextView;

    new-instance v1, Lclx;

    invoke-direct {v1, p0}, Lclx;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->u:Landroid/widget/TextView;

    new-instance v1, Lcly;

    invoke-direct {v1, p0}, Lcly;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->v:Landroid/widget/ImageButton;

    new-instance v1, Lclz;

    invoke-direct {v1, p0}, Lclz;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->A:Landroid/widget/TextView;

    new-instance v1, Lcma;

    invoke-direct {v1, p0}, Lcma;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-nez v0, :cond_4

    .line 307
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    .line 308
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->f:Ljava/lang/String;

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 313
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 314
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_register_tel:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_5
    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    sget-object v2, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    if-ne v1, v2, :cond_12

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 322
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 325
    const-string v1, "account_view_type"

    const-string v3, "telView"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "unknown"

    .line 328
    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v3, :cond_7

    .line 329
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 331
    :cond_7
    const-string v3, "account_source"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 334
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->s:Landroid/widget/TextView;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_one_key_register:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1, v5}, Lcom/wandoujia/account/widget/AccountEditText;->setVisibility(I)V

    .line 354
    :cond_8
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 355
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->v:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->requestFocus()Z

    .line 360
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 361
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1, v0}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_9
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->J:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 365
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->n:Lcjl;

    if-eqz v0, :cond_a

    .line 366
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 369
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_b

    .line 374
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    new-instance v1, Lcli;

    invoke-direct {v1, p0}, Lcli;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    :cond_b
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->y:Landroid/widget/CheckBox;

    new-instance v1, Lclj;

    invoke-direct {v1, p0}, Lclj;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 397
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    new-instance v1, Lclk;

    invoke-direct {v1, p0}, Lclk;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 410
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    new-instance v1, Lcll;

    invoke-direct {v1, p0}, Lcll;-><init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 421
    sget-boolean v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->D:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->p:Lcom/wandoujia/account/AccountErrorResponse;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->r:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->p:Lcom/wandoujia/account/AccountErrorResponse;

    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    iget v2, v0, Lcom/wandoujia/account/AccountErrorResponse;->a:I

    iget-object v0, v0, Lcom/wandoujia/account/AccountErrorResponse;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c(Lcom/wandoujia/account/dto/WandouResponse;)V

    :cond_c
    sput-boolean v6, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->D:Z

    .line 422
    :cond_d
    return-void

    .line 156
    :cond_e
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 161
    :cond_f
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 170
    :cond_10
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->G:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$dimen;->account_sdk_xsmall_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 174
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->F:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 185
    :cond_11
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->t:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 336
    :cond_12
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    sget-object v2, Lcom/wandoujia/account/AccountParams$Page;->EMAIL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    if-ne v1, v2, :cond_8

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 338
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->w:Z

    .line 341
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e()V

    .line 343
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 344
    const-string v1, "account_view_type"

    const-string v3, "email"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "unknown"

    .line 347
    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v3, :cond_14

    .line 348
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 350
    :cond_14
    const-string v3, "account_source"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    goto/16 :goto_4

    .line 358
    :cond_15
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->requestFocus()Z

    goto/16 :goto_5
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 537
    return-void
.end method

.method protected final b(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    return-void
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->y:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 888
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 889
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_aa_account_register:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    .line 450
    new-instance v0, Lcie;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcie;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->C:Lcie;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->C:Lcie;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcie;->a(Lcom/wandoujia/account/AccountParams;Landroid/app/Activity;)Lcie;

    .line 451
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a()V

    .line 453
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->j:Lcjm;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->j:Lcjm;

    sget-object v1, Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;->REGISTER:Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;

    invoke-interface {v0, v1}, Lcjm;->a(Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 896
    :cond_0
    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f:Lcmm;

    .line 897
    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->C:Lcie;

    .line 898
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->onDestroy()V

    .line 899
    return-void
.end method
