.class public Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;
.super Lcom/wandoujia/p4/account/activity/AccountBaseActivity;
.source "AccountCheckPasswordActivity.java"


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/EditText;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    const v0, 0x7f0e00cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Letd;

    invoke-direct {v1}, Letd;-><init>()V

    invoke-static {p0, p1, v0, v1}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "phoenix.intent.extra_ACCOUNT_BIND_TYPE"

    iget-object v2, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "phoenix.intent.extra.ACCOUNT_PASSWORD"

    iget-object v2, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->finish()V

    .line 86
    return-void
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    const v0, 0x7f0e00cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoenix.intent.extra_ACCOUNT_BIND_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->e:Ljava/lang/String;

    .line 37
    const-string v0, "email"

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->setTitle(I)V

    .line 43
    :goto_0
    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0c00d3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->c:Landroid/widget/Button;

    new-instance v1, Letc;

    invoke-direct {v1, p0}, Letc;-><init>(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void

    .line 40
    :cond_0
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->setTitle(I)V

    .line 41
    const-string v0, "tel"

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->e:Ljava/lang/String;

    goto :goto_0
.end method
