.class public Lcom/wandoujia/account/fragment/AccountLoginFragment;
.super Lcom/wandoujia/account/fragment/AccountBaseFragment;
.source "AccountLoginFragment.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/CheckBox;

.field private final D:Lcjh;

.field private E:Lcie;

.field private final F:Landroid/text/TextWatcher;

.field q:Lcom/wandoujia/account/widget/AccountEditText;

.field private r:Landroid/view/View;

.field private s:Lcom/wandoujia/account/widget/AccountEditText;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;-><init>()V

    .line 72
    new-instance v0, Lcjh;

    invoke-direct {v0, p0}, Lcjh;-><init>(Lcom/wandoujia/account/fragment/AccountBaseFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->D:Lcjh;

    .line 435
    new-instance v0, Lcke;

    invoke-direct {v0, p0}, Lcke;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->F:Landroid/text/TextWatcher;

    .line 83
    return-void
.end method

.method public static final a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountLoginFragment;
    .locals 1
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;-><init>()V

    .line 79
    invoke-virtual {v0, p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 7
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-static {v0}, Lcom/wandoujia/base/utils/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcie;->a(Ljava/lang/String;Z)Lcie;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->TELEPHONE:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setContentType(Lcom/wandoujia/account/widget/AccountEditText$ContentType;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->LOGIN:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setStatusType(Lcom/wandoujia/account/widget/AccountEditText$StatusType;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->PASSWORD:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setContentType(Lcom/wandoujia/account/widget/AccountEditText$ContentType;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->LOGIN:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setStatusType(Lcom/wandoujia/account/widget/AccountEditText$StatusType;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "account_button_click_type"

    const-string v2, "account_login"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unknown"

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    :cond_4
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_netop_submitting_login:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v2}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v4, v4, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    const-string v5, "LOGIN_TAG"

    iget-object v6, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->D:Lcjh;

    invoke-virtual/range {v0 .. v6}, Lcmm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->k:Lcjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->k:Lcjp;

    invoke-interface {v0}, Lcjp;->a()V

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 5
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b()Ls;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b()Ls;

    move-result-object v0

    const-string v2, "register"

    invoke-virtual {v0, v2}, Ls;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-nez v2, :cond_0

    new-instance v2, Lcom/wandoujia/account/AccountParams;

    const-string v3, "unknown"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    iput-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    sget-object v3, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v3, v2, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    :cond_0
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, v2, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    sget-object v3, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    sget-object v3, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v3, v2, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    :cond_1
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b:Landroid/os/Bundle;

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b:Landroid/os/Bundle;

    :cond_2
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b:Landroid/os/Bundle;

    const-string v3, "account.intent.extra.ACCOUNT_PARAMS"

    iget-object v4, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    move-result-object v0

    :cond_3
    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "register"

    invoke-virtual {v1, v2, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    invoke-virtual {v1}, Lag;->b()I

    :cond_4
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 7
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "account_button_click_type"

    const-string v2, "account_forget_password"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unknown"

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    :cond_0
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->d:Ljava/lang/String;

    const-string v3, "http://www.wandoujia.com/account/?source=p3&username=%s#find"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%s"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_forget_password_title:I

    invoke-virtual {p0, v3}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/wandoujia/account/fragment/WebViewFragment;->a(Lcom/wandoujia/account/AccountParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/account/fragment/WebViewFragment;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "forgetPassword"

    invoke-virtual {v1, v2, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    const-string v0, "login"

    invoke-virtual {v1, v0}, Lag;->a(Ljava/lang/String;)Lag;

    invoke-virtual {v1}, Lag;->a()I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->d:Ljava/lang/String;

    const-string v2, "http://www.wandoujia.com/account/?source=p3#find"

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_forget_password_title:I

    invoke-virtual {p0, v3}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/account/fragment/WebViewFragment;->a(Lcom/wandoujia/account/AccountParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/account/fragment/WebViewFragment;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static synthetic d(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->u:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcom/wandoujia/account/widget/AccountEditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_login_failure:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lckf;

    invoke-direct {v2}, Lckf;-><init>()V

    invoke-static {v0, p1, v1, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic f(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcom/wandoujia/account/widget/AccountEditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcjh;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->D:Lcjh;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 87
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a()V

    .line 88
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_username:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/widget/AccountEditText;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    .line 90
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->u:Landroid/widget/ImageButton;

    .line 91
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/widget/AccountEditText;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    .line 92
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_login:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->t:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_register:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->y:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_forget_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->z:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_sina_login_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->v:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_qq_login_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->w:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_wechat_login_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->x:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_legal_hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->A:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_contact_checkBox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->C:Landroid/widget/CheckBox;

    .line 100
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->third_login_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->B:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->F:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->F:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_register_agree:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_title_terms:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 111
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/wandoujia/account/R$style;->account_sdk_term_style:I

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 114
    if-eq v0, v7, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/wandoujia/account/R$string;->account_sdk_title_terms:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    invoke-static {v0}, Ld;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->requestFocus()Z

    .line 126
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->i:Z

    if-nez v0, :cond_8

    .line 138
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->j:Z

    if-nez v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->k:Z

    if-nez v0, :cond_a

    .line 150
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->x:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$dimen;->account_sdk_large_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 154
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :goto_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->m:Z

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    if-nez v0, :cond_b

    .line 165
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 171
    :goto_4
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->j:Z

    if-nez v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->C:Landroid/widget/CheckBox;

    new-instance v1, Lckc;

    invoke-direct {v1, p0}, Lckc;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->n:Lcjl;

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->C:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 200
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->s:Lcom/wandoujia/account/AccountParams$Type;

    sget-object v1, Lcom/wandoujia/account/AccountParams$Type;->SDK:Lcom/wandoujia/account/AccountParams$Type;

    if-ne v0, v1, :cond_d

    .line 201
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 202
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_login_with_wdj:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Ljava/lang/String;)V

    .line 216
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->t:Landroid/widget/TextView;

    new-instance v1, Lckn;

    invoke-direct {v1, p0}, Lckn;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->y:Landroid/widget/TextView;

    new-instance v1, Lckq;

    invoke-direct {v1, p0}, Lckq;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->z:Landroid/widget/TextView;

    new-instance v1, Lckr;

    invoke-direct {v1, p0}, Lckr;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->v:Landroid/view/View;

    new-instance v1, Lcks;

    invoke-direct {v1, p0}, Lcks;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->w:Landroid/view/View;

    new-instance v1, Lckt;

    invoke-direct {v1, p0}, Lckt;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->x:Landroid/view/View;

    new-instance v1, Lcku;

    invoke-direct {v1, p0}, Lcku;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->u:Landroid/widget/ImageButton;

    new-instance v1, Lckv;

    invoke-direct {v1, p0}, Lckv;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->A:Landroid/widget/TextView;

    new-instance v1, Lckw;

    invoke-direct {v1, p0}, Lckw;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    new-instance v1, Lckd;

    invoke-direct {v1, p0}, Lckd;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 340
    return-void

    .line 127
    :cond_6
    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->requestFocus()Z

    .line 131
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ld;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->requestFocus()Z

    goto/16 :goto_0

    .line 140
    :cond_8
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 146
    :cond_9
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 156
    :cond_a
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->x:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$dimen;->account_sdk_xsmall_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 160
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 169
    :cond_b
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    .line 204
    :cond_c
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_login:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 207
    :cond_d
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_login:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 211
    :cond_e
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 212
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 481
    :cond_0
    if-nez v0, :cond_2

    .line 656
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    if-eqz p1, :cond_a

    .line 486
    :try_start_0
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v3

    sget-object v4, Lcom/wandoujia/account/dto/AccountError;->NEED_SECCODE:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v4}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 487
    new-instance v1, Lckg;

    invoke-direct {v1, p0}, Lckg;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    new-instance v2, Lckh;

    invoke-direct {v2}, Lckh;-><init>()V

    invoke-static {v0, v1, v2}, Ld;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    goto :goto_0

    .line 508
    :cond_3
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v3

    sget-object v4, Lcom/wandoujia/account/dto/AccountError;->USER_NOT_EXIST:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v4}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 509
    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v3}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld;->v(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 510
    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_user_not_register:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v4}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_register:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_one_key_register:I

    invoke-virtual {p0, v3}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcki;

    invoke-direct {v4, p0}, Lcki;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    new-instance v5, Lckj;

    invoke-direct {v5, p0}, Lckj;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    invoke-static/range {v0 .. v5}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto :goto_0

    .line 564
    :cond_4
    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v3}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld;->t(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    if-ne v3, v4, :cond_5

    :goto_1
    if-eqz v1, :cond_1

    .line 565
    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_user_not_register:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->q:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v4}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_register:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_register:I

    invoke-virtual {p0, v3}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lckk;

    invoke-direct {v4, p0}, Lckk;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    new-instance v5, Lckl;

    invoke-direct {v5}, Lckl;-><init>()V

    invoke-static/range {v0 .. v5}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 564
    goto :goto_1

    .line 591
    :cond_6
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v1

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USERNAME_PASSWORD_WRONG:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 592
    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->s:Lcom/wandoujia/account/widget/AccountEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_7
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v2

    sget-object v3, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v3}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 597
    :cond_8
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_netop_server_error:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    :cond_9
    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_login_failure:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_try_again:I

    invoke-virtual {p0, v3}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lckm;

    invoke-direct {v4, p0}, Lckm;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    sget v5, Lcom/wandoujia/account/R$string;->account_sdk_find_password:I

    invoke-virtual {p0, v5}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcko;

    invoke-direct {v6, p0}, Lcko;-><init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    new-instance v7, Lcok;

    invoke-direct {v7, v0}, Lcok;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Lcok;->b(Ljava/lang/CharSequence;)Lcok;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcok;->a(Ljava/lang/CharSequence;)Lcok;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcok;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcok;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcok;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcok;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcok;->a(Z)Lcok;

    invoke-virtual {v7}, Lcok;->a()Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto/16 :goto_0

    .line 643
    :cond_a
    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_netop_server_error:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_login_failure:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lckp;

    invoke-direct {v3}, Lckp;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method protected final b(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "account_login_type"

    const-string v2, "account_normal_login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "account_login_status"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 433
    return-void
.end method

.method protected final c()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    iget-object v1, v0, Lcie;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcie;->b:Landroid/app/Activity;

    new-instance v2, Lcig;

    invoke-direct {v2, v0}, Lcig;-><init>(Lcie;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 425
    :cond_0
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 403
    const-string v0, "LOGIN_TAG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-object v0, v0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-static {v3, v1, v2, v0}, Lcie;->a(IIZLjava/lang/String;)V

    .line 408
    :cond_0
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    const-string v0, "REGISTER_TAG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcie;->a(Landroid/content/Context;Ljava/lang/Boolean;Z)V

    .line 414
    :cond_3
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_register_success:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 416
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->TEL_REGISTER:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->C:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 664
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 665
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->setHasOptionsMenu(Z)V

    .line 352
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_aa_account_login:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a:Landroid/view/View;

    .line 354
    new-instance v0, Lcie;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcie;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcie;->a(Lcom/wandoujia/account/AccountParams;Landroid/app/Activity;)Lcie;

    .line 355
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a()V

    .line 357
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 361
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    const-string v0, "account_view_type"

    const-string v2, "account_login"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v0, "unknown"

    .line 364
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_1

    .line 365
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 367
    :cond_1
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 371
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->j:Lcjm;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->j:Lcjm;

    sget-object v1, Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;->LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;

    invoke-interface {v0, v1}, Lcjm;->a(Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 806
    :cond_0
    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    .line 807
    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->E:Lcie;

    .line 808
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->onDestroy()V

    .line 809
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    .line 380
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_renren_login:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    sget-object v0, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->g:Lcom/wandoujia/account/dto/Platform;

    .line 382
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 383
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 398
    :goto_0
    return v0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->h:Lcjs;

    iget-object v4, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v4, v4, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmm;->b(Lcom/wandoujia/account/dto/Platform;Landroid/content/Context;Lcmh;Ljava/lang/String;)V

    .line 387
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 388
    const-string v0, "account_view_type"

    const-string v2, "account_renren_login"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v0, "unknown"

    .line 391
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_2

    .line 392
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 394
    :cond_2
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 398
    :cond_3
    invoke-super {p0, p1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
